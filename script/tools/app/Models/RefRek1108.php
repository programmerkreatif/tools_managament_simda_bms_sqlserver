<?php

namespace App\Models;

class RefRek1108 extends BaseSqlServerModel
{
    protected $table = 'Ref_Rek1_108';

    protected $fillable = [
        'Kd_Aset',
        'Kd_Aset0',
        'Kd_Aset1',
        'Nm_Aset1'
    ];

    public function kdAset()
    {
        return $this->belongsTo(RefRek0108::class, 'Kd_Aset');
    }

    public function kdAset()
    {
        return $this->belongsTo(RefRek0108::class, 'Kd_Aset');
    }

    public function kdAset0()
    {
        return $this->belongsTo(RefRek0108::class, 'Kd_Aset0');
    }

    public function kdAset0()
    {
        return $this->belongsTo(RefRek0108::class, 'Kd_Aset0');
    }
}