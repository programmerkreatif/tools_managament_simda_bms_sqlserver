<?php

namespace App\Models;

class RefRek4 extends BaseSqlServerModel
{
    protected $table = 'Ref_Rek_4';

    protected $fillable = [
        'Kd_Rek_1',
        'Kd_Rek_2',
        'Kd_Rek_3',
        'Kd_Rek_4',
        'Nm_Rek_4'
    ];

    public function kdRek1()
    {
        return $this->belongsTo(RefRek3::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek3::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek3::class, 'Kd_Rek_1');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek3::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek3::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek3::class, 'Kd_Rek_2');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek3::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek3::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek3::class, 'Kd_Rek_3');
    }
}