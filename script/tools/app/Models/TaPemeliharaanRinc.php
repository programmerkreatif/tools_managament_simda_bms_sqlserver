<?php

namespace App\Models;

class TaPemeliharaanRinc extends BaseSqlServerModel
{
    protected $table = 'Ta_Pemeliharaan_Rinc';

    protected $fillable = [
        'Tahun',
        'No_SP2D',
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
        'Jns_Pemeliharaan',
        'Biaya',
        'Keterangan'
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
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Bidang');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Kab_Kota');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Prov');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Sub');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_Unit');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_UPB');
    }

    public function kdUpb()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Kd_UPB');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'No_SP2D');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'No_SP2D');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'No_SP2D');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'No_SP2D');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'No_SP2D');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'No_SP2D');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'No_SP2D');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'No_SP2D');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPemeliharaan::class, 'Tahun');
    }
}