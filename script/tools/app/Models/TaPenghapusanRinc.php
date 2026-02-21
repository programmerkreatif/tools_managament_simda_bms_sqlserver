<?php

namespace App\Models;

class TaPenghapusanRinc extends BaseSqlServerModel
{
    protected $table = 'Ta_Penghapusan_Rinc';

    protected $fillable = [
        'Tahun',
        'No_SK',
        'No_ID',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_Aset4',
        'Kd_Aset5',
        'No_Register',
        'Kd_Pemilik',
        'Tgl_Perolehan',
        'Kondisi',
        'Alasan',
        'Keterangan',
        'Kd_Alasan',
        'Harga'
    ];

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset1');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset2');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset2');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset2');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset2');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset2');
    }

    public function kdAset3()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset3');
    }

    public function kdAset3()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset3');
    }

    public function kdAset3()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset3');
    }

    public function kdAset3()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset3');
    }

    public function kdAset3()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset3');
    }

    public function kdAset4()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset4');
    }

    public function kdAset4()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset4');
    }

    public function kdAset4()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset4');
    }

    public function kdAset4()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset4');
    }

    public function kdAset4()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset4');
    }

    public function kdAset5()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset5');
    }

    public function kdAset5()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset5');
    }

    public function kdAset5()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset5');
    }

    public function kdAset5()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset5');
    }

    public function kdAset5()
    {
        return $this->belongsTo(RefRekAset5::class, 'Kd_Aset5');
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

    public function noSk()
    {
        return $this->belongsTo(TaPenghapusan::class, 'No_SK');
    }

    public function noSk()
    {
        return $this->belongsTo(TaPenghapusan::class, 'No_SK');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPenghapusan::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPenghapusan::class, 'Tahun');
    }
}