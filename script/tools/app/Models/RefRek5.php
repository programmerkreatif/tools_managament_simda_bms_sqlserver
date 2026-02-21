<?php

namespace App\Models;

class RefRek5 extends BaseSqlServerModel
{
    protected $table = 'Ref_Rek_5';

    protected $fillable = [
        'Kd_Rek_1',
        'Kd_Rek_2',
        'Kd_Rek_3',
        'Kd_Rek_4',
        'Kd_Rek_5',
        'Nm_Rek_5',
        'Peraturan'
    ];

    public function kdRek1()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_1');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_2');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_3');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_4');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_4');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_4');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek4::class, 'Kd_Rek_4');
    }
}