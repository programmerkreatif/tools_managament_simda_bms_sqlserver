<?php

namespace App\Models;

class TaKibA extends BaseSqlServerModel
{
    protected $table = 'Ta_KIB_A';
    protected $primaryKey = 'IDPemda';

    protected $fillable = [
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
        'Luas_M2',
        'Alamat',
        'Hak_Tanah',
        'Sertifikat_Tanggal',
        'Sertifikat_Nomor',
        'Penggunaan',
        'Asal_usul',
        'Harga',
        'Keterangan',
        'Tahun',
        'No_SP2D',
        'No_ID',
        'Tgl_Pembukuan',
        'Kd_Kecamatan',
        'Kd_Desa',
        'Invent',
        'No_SKGuna',
        'Kd_Penyusutan',
        'Kd_Data',
        'Log_User',
        'Log_entry',
        'Kd_Masalah',
        'Ket_Masalah',
        'Kd_KA',
        'No_SIPPT',
        'Dev_Id',
        'Kd_Hapus',
        'IDData',
        'Kd_Aset8',
        'Kd_Aset80',
        'Kd_Aset81',
        'Kd_Aset82',
        'Kd_Aset83',
        'Kd_Aset84',
        'Kd_Aset85',
        'No_Reg8',
        'Tg_Update8'
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

    public function kdPemilik()
    {
        return $this->belongsTo(RefPemilik::class, 'Kd_Pemilik');
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
}