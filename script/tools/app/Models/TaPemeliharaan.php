<?php

namespace App\Models;

class TaPemeliharaan extends BaseSqlServerModel
{
    protected $table = 'Ta_Pemeliharaan';

    protected $fillable = [
        'Tahun',
        'No_SP2D',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'Tgl_SP2D',
        'Nm_Pemelihara',
        'Tgl_Pemeliharaan',
        'Keterangan',
        'No_Kontrak',
        'Tgl_Kontrak',
        'Nm_Rekanan'
    ];

    public function kdBidang()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Bidang');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Kab_Kota');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Prov');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Sub');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_Unit');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaUpb::class, 'Kd_UPB');
    }

    public function tahun()
    {
        return $this->belongsTo(TaUpb::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaUpb::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaUpb::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaUpb::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaUpb::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaUpb::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaUpb::class, 'Tahun');
    }
}