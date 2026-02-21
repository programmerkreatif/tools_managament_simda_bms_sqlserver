<?php

namespace App\Models;

class RefRek3108 extends BaseSqlServerModel
{
    protected $table = 'Ref_Rek3_108';

    protected $fillable = [
        'Kd_Aset',
        'Kd_Aset0',
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Nm_Aset3'
    ];

    public function kdAset()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset');
    }

    public function kdAset()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset');
    }

    public function kdAset()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset');
    }

    public function kdAset()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset');
    }

    public function kdAset0()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset0');
    }

    public function kdAset0()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset0');
    }

    public function kdAset0()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset0');
    }

    public function kdAset0()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset0');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset1');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset2');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset2');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset2');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRek2108::class, 'Kd_Aset2');
    }
}