<?php

namespace App\Models;

class RefUnit extends BaseSqlServerModel
{
    protected $table = 'Ref_Unit';

    protected $fillable = [
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Nm_Unit'
    ];

    public function kdBidang()
    {
        return $this->belongsTo(RefBidang::class, 'Kd_Bidang');
    }

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