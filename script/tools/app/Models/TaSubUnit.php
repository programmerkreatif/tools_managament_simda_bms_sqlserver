<?php

namespace App\Models;

class TaSubUnit extends BaseSqlServerModel
{
    protected $table = 'Ta_Sub_Unit';

    protected $fillable = [
        'Tahun',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Alamat'
    ];

    public function kdKabKota()
    {
        return $this->belongsTo(TaPemda::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaPemda::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaPemda::class, 'Kd_Kab_Kota');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaPemda::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaPemda::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaPemda::class, 'Kd_Prov');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPemda::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPemda::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPemda::class, 'Tahun');
    }
}