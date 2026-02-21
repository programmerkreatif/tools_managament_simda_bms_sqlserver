<?php

namespace App\Models;

class RefRek3 extends BaseSqlServerModel
{
    protected $table = 'Ref_Rek_3';

    protected $fillable = [
        'Kd_Rek_1',
        'Kd_Rek_2',
        'Kd_Rek_3',
        'Nm_Rek_3',
        'SaldoNorm'
    ];

    public function kdRek1()
    {
        return $this->belongsTo(RefRek2::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek2::class, 'Kd_Rek_1');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek2::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek2::class, 'Kd_Rek_2');
    }
}