<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class GenerateSqlsrvModels extends Command
{
    protected $signature = 'make:sqlsrv-models';
    protected $description = 'Generate SQL Server models with fillable and relations (no mbstring)';

    public function handle()
    {
        if (!File::exists(app_path('Models'))) {
            File::makeDirectory(app_path('Models'), 0755, true);
        }

        $tables = DB::connection('sqlsrv')->select("
            SELECT TABLE_NAME
            FROM INFORMATION_SCHEMA.TABLES
            WHERE TABLE_TYPE = 'BASE TABLE'
        ");

        foreach ($tables as $table) {
            $tableName = $table->TABLE_NAME;

            // StudlyCase tanpa mbstring
            $className = $this->studly($tableName);

            // Ambil kolom
            $columns = DB::connection('sqlsrv')->select("
                SELECT COLUMN_NAME
                FROM INFORMATION_SCHEMA.COLUMNS
                WHERE TABLE_NAME = ?
            ", [$tableName]);

            // Primary key
            $pk = DB::connection('sqlsrv')->select("
                SELECT COLUMN_NAME
                FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
                WHERE TABLE_NAME = ?
                  AND CONSTRAINT_NAME LIKE 'PK%'
            ", [$tableName]);

            $primaryKey = count($pk) === 1 ? $pk[0]->COLUMN_NAME : null;

            // Fillable
            $fillable = [];
            foreach ($columns as $col) {
                if ($col->COLUMN_NAME !== $primaryKey &&
                    !in_array($col->COLUMN_NAME, ['created_at', 'updated_at', 'deleted_at'])
                ) {
                    $fillable[] = $col->COLUMN_NAME;
                }
            }

            // Relations (foreign key only)
            $relations = DB::connection('sqlsrv')->select("
                SELECT
                    cu.COLUMN_NAME,
                    pk.TABLE_NAME AS REFERENCED_TABLE
                FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS rc
                JOIN INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE cu
                    ON rc.CONSTRAINT_NAME = cu.CONSTRAINT_NAME
                JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE pk
                    ON rc.UNIQUE_CONSTRAINT_NAME = pk.CONSTRAINT_NAME
                WHERE cu.TABLE_NAME = ?
            ", [$tableName]);

            $content = $this->template(
                $className,
                $tableName,
                $primaryKey,
                $fillable,
                $relations
            );

            File::put(app_path("Models/{$className}.php"), $content);

            $this->info("✔ Model dibuat: {$className}");
        }

        $this->info('🎉 Semua model SQL Server berhasil digenerate!');
    }

    /**
     * StudlyCase converter TANPA mbstring
     */
    private function studly(string $value): string
    {
        $words = preg_split('/[_\-\s]+/', strtolower($value));

        $studly = '';
        foreach ($words as $word) {
            $studly .= ucfirst($word);
        }

        return $studly;
    }

    private function template($class, $table, $pk, $fillable, $relations)
    {
        $pkLine = $pk ? "    protected \$primaryKey = '{$pk}';\n" : "";

        $fillableBlock = '';
        if (!empty($fillable)) {
            $fields = implode(",\n        ", array_map(fn ($f) => "'{$f}'", $fillable));
            $fillableBlock = <<<PHP

    protected \$fillable = [
        {$fields}
    ];
PHP;
        }

        $relationBlock = '';
        foreach ($relations as $rel) {
            $method = $this->camel(str_replace('_id', '', $rel->COLUMN_NAME));
            $relatedModel = $this->studly($rel->REFERENCED_TABLE);

            $relationBlock .= <<<PHP


    public function {$method}()
    {
        return \$this->belongsTo({$relatedModel}::class, '{$rel->COLUMN_NAME}');
    }
PHP;
        }

        return <<<PHP
<?php

namespace App\Models;

class {$class} extends BaseSqlServerModel
{
    protected \$table = '{$table}';
{$pkLine}{$fillableBlock}{$relationBlock}
}
PHP;
    }

    /**
     * camelCase helper TANPA mbstring
     */
    private function camel(string $value): string
    {
        $words = preg_split('/[_\-\s]+/', strtolower($value));

        $camel = array_shift($words);
        foreach ($words as $word) {
            $camel .= ucfirst($word);
        }

        return $camel;
    }
}