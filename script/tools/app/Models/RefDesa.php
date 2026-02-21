<?php

namespace App\Models;

class RefDesa extends BaseSqlServerModel
{
    protected $table = 'Ref_Desa';

    protected $fillable = [
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Kecamatan',
        'Kd_Desa',
        'Nm_Desa'
    ];

    public function kdKabKota()
    {
        return $this->belongsTo(RefKecamatan::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefKecamatan::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefKecamatan::class, 'Kd_Kab_Kota');
    }

    public function kdKecamatan()
    {
        return $this->belongsTo(RefKecamatan::class, 'Kd_Kecamatan');
    }

    public function kdKecamatan()
    {
        return $this->belongsTo(RefKecamatan::class, 'Kd_Kecamatan');
    }

    public function kdKecamatan()
    {
        return $this->belongsTo(RefKecamatan::class, 'Kd_Kecamatan');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefKecamatan::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefKecamatan::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefKecamatan::class, 'Kd_Prov');
    }
}