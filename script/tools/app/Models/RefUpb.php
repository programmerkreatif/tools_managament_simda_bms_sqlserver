<?php

namespace App\Models;

class RefUpb extends BaseSqlServerModel
{
    protected $table = 'Ref_UPB';

    protected $fillable = [
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'Nm_UPB',
        'Kd_Kecamatan',
        'Kd_Desa'
    ];

    public function kdBidang()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Bidang');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Kab_Kota');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Prov');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Sub');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSubUnit::class, 'Kd_Unit');
    }
}