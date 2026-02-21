<?php

namespace App\Models;

class RefRek2108 extends BaseSqlServerModel
{
    protected $table = 'Ref_Rek2_108';

    protected $fillable = [
        'Kd_Aset',
        'Kd_Aset0',
        'Kd_Aset1',
        'Kd_Aset2',
        'Nm_Aset2'
    ];

    public function kdAset()
    {
        return $this->belongsTo(RefRek1108::class, 'Kd_Aset');
    }

    public function kdAset()
    {
        return $this->belongsTo(RefRek1108::class, 'Kd_Aset');
    }

    public function kdAset()
    {
        return $this->belongsTo(RefRek1108::class, 'Kd_Aset');
    }

    public function kdAset0()
    {
        return $this->belongsTo(RefRek1108::class, 'Kd_Aset0');
    }

    public function kdAset0()
    {
        return $this->belongsTo(RefRek1108::class, 'Kd_Aset0');
    }

    public function kdAset0()
    {
        return $this->belongsTo(RefRek1108::class, 'Kd_Aset0');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRek1108::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRek1108::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRek1108::class, 'Kd_Aset1');
    }
}