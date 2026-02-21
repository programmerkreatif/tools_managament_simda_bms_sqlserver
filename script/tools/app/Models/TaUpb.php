<?php

namespace App\Models;

class TaUpb extends BaseSqlServerModel
{
    protected $table = 'Ta_UPB';

    protected $fillable = [
        'Tahun',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'Nm_Pimpinan',
        'Nip_Pimpinan',
        'Jbt_Pimpinan',
        'Nm_Pengurus',
        'Nip_Pengurus',
        'Jbt_Pengurus',
        'Nm_Penyimpan',
        'Nip_Penyimpan',
        'Jbt_Penyimpan',
        'Alamat'
    ];

    public function kdBidang()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Bidang');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Kab_Kota');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Prov');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Sub');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_Unit');
    }

    public function kdUpb()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(RefUpb::class, 'Kd_UPB');
    }

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