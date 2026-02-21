<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;

class GenerateSqlsrvModels extends Command
{
    protected $signature = 'make:sqlsrv-models';
    protected $description = 'Generate all models from SQL Server tables';

    public function handle()
    {
        if (!File::exists(app_path('Models'))) {
            File::makeDirectory(app_path('Models'), 0755, true);
        }

        $tables = DB::select("
            SELECT TABLE_NAME
            FROM INFORMATION_SCHEMA.TABLES
            WHERE TABLE_TYPE = 'BASE TABLE'
        ");

        foreach ($tables as $table) {
            $tableName = $table->TABLE_NAME;

            // Nama class
            $className = str_replace(' ', '', ucwords(str_replace(['_', '-'], ' ', strtolower($tableName))));

            // Primary key
            $pk = DB::select("
                SELECT COLUMN_NAME
                FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
                WHERE TABLE_NAME = ?
            ", [$tableName]);

            $primaryKey = count($pk) === 1 ? $pk[0]->COLUMN_NAME : null;

            $content = $this->template($className, $tableName, $primaryKey);

            File::put(app_path("Models/{$className}.php"), $content);

            $this->info("✔ Model dibuat: {$className}");
        }

        $this->info('🎉 Semua model SQL Server berhasil digenerate!');
    }

    private function template($class, $table, $pk)
    {
        $pkLine = $pk
            ? "    protected \$primaryKey = '{$pk}';\n"
            : "    protected \$primaryKey = null;\n";

        return <<<PHP
<?php

namespace App\Models;

class {$class} extends BaseSqlServerModel
{
    protected \$table = '{$table}';
{$pkLine}}
PHP;
    }
}