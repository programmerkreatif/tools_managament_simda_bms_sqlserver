<?php

namespace App\Models;

class RefKecamatan extends BaseSqlServerModel
{
    protected $table = 'Ref_Kecamatan';

    protected $fillable = [
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Kecamatan',
        'Nm_Kecamatan'
    ];

    public function kdKabKota()
    {
        return $this->belongsTo(RefKabKota::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefKabKota::class, 'Kd_Kab_Kota');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefKabKota::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefKabKota::class, 'Kd_Prov');
    }
}