<?php

namespace App\Models;

class TaPengadaan extends BaseSqlServerModel
{
    protected $table = 'Ta_Pengadaan';

    protected $fillable = [
        'Tahun',
        'No_Kontrak',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'Tgl_Kontrak',
        'Keterangan',
        'Waktu',
        'Nilai',
        'Nm_Perusahaan',
        'Bentuk',
        'Alamat',
        'Nm_Pemilik',
        'NPWP',
        'Nm_Bank',
        'Nm_Rekening',
        'No_Rekening',
        'Kd_Urusan',
        'Kd_Bidang1',
        'Kd_Unit1',
        'Kd_Sub1',
        'Kd_Prog',
        'ID_Prog',
        'Kd_Keg',
        'Kd_Posting'
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