<?php

namespace App\Models;

class TaRkpbu extends BaseSqlServerModel
{
    protected $table = 'Ta_RKPBU';

    protected $fillable = [
        'Tahun',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'No_ID',
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_Aset4',
        'Kd_Aset5',
        'Uraian',
        'Lokasi',
        'Jumlah',
        'Harga',
        'Kd_Rek_1',
        'Kd_Rek_2',
        'Kd_Rek_3',
        'Kd_Rek_4',
        'Kd_Rek_5',
        'Keterangan',
        'Kd_Aset8',
        'Kd_Aset80',
        'Kd_Aset81',
        'Kd_Aset82',
        'Kd_Aset83',
        'Kd_Aset84',
        'Kd_Aset85'
    ];

    public function kdRek1()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_1');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_2');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_3');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_4');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_4');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_4');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_4');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_4');
    }

    public function kdRek5()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_5');
    }

    public function kdRek5()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_5');
    }

    public function kdRek5()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_5');
    }

    public function kdRek5()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_5');
    }

    public function kdRek5()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_5');
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