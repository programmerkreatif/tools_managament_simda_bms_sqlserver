<?php

namespace App\Models;

class TaPemda extends BaseSqlServerModel
{
    protected $table = 'Ta_Pemda';

    protected $fillable = [
        'Tahun',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Nm_PimpDaerah',
        'Jab_PimpDaerah',
        'Nm_Sekda',
        'Nip_Sekda',
        'Jbt_Sekda',
        'Nm_Ka_Umum',
        'Nip_Ka_Umum',
        'Jbt_Ka_Umum',
        'Nm_Ka_Keu',
        'Nip_Ka_Keu',
        'Jbt_Ka_Keu'
    ];

    public function kdKabKota()
    {
        return $this->belongsTo(RefPemda::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefPemda::class, 'Kd_Kab_Kota');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefPemda::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefPemda::class, 'Kd_Prov');
    }
}