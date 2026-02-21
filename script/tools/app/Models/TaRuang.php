<?php

namespace App\Models;

class TaRuang extends BaseSqlServerModel
{
    protected $table = 'Ta_Ruang';

    protected $fillable = [
        'Tahun',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'Kd_Ruang',
        'Nm_Ruang',
        'Nm_Pngjwb',
        'Nip_Pngjwb',
        'Jbt_Pngjwb',
        'Kd_Bidang1',
        'Kd_Unit1',
        'Kd_Sub1',
        'Kd_UPB1',
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_Aset4',
        'Kd_Aset5',
        'No_Register',
        'Kd_Pemilik'
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