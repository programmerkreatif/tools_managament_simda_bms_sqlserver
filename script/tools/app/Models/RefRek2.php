<?php

namespace App\Models;

class RefRek2 extends BaseSqlServerModel
{
    protected $table = 'Ref_Rek_2';

    protected $fillable = [
        'Kd_Rek_1',
        'Kd_Rek_2',
        'Nm_Rek_2'
    ];

    public function kdRek1()
    {
        return $this->belongsTo(RefRek1::class, 'Kd_Rek_1');
    }
}