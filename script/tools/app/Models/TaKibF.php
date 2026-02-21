<?php

namespace App\Models;

class TaKibF extends BaseSqlServerModel
{
    protected $table = 'Ta_KIB_F';
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
        'Bertingkat_Tidak',
        'Beton_tidak',
        'Panjang',
        'Lebar',
        'Luas_Lantai',
        'Lokasi',
        'Dokumen_Tanggal',
        'Dokumen_Nomor',
        'Status_Tanah',
        'Kd_Tanah1',
        'Kd_Tanah2',
        'Kd_Tanah3',
        'Kd_Tanah4',
        'Kd_Tanah5',
        'Kode_Tanah',
        'Asal_usul',
        'Kondisi',
        'Harga',
        'Keterangan',
        'Tgl_Pembukuan',
        'Kd_Kecamatan',
        'Kd_Desa',
        'Invent',
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
        'Tg_Update8',
        'Kd_Tanah',
        'Kd_Tanah0'
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