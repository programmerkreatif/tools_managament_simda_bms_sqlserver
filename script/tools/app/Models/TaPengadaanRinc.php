<?php

namespace App\Models;

class TaPengadaanRinc extends BaseSqlServerModel
{
    protected $table = 'Ta_Pengadaan_Rinc';

    protected $fillable = [
        'Tahun',
        'No_Kontrak',
        'No_ID',
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_Aset4',
        'Kd_Aset5',
        'Merk',
        'Type',
        'Ukuran',
        'Jumlah',
        'Harga',
        'Keterangan',
        'Bahan',
        'CC',
        'Nomor_Pabrik',
        'Nomor_Rangka',
        'Nomor_Mesin',
        'Nomor_Polisi',
        'Nomor_BPKB',
        'Panjang',
        'Lebar',
        'Luas',
        'Kd_Aset8',
        'Kd_Aset80',
        'Kd_Aset81',
        'Kd_Aset82',
        'Kd_Aset83',
        'Kd_Aset84',
        'Kd_Aset85',
        'Tg_Update8'
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

    public function noKontrak()
    {
        return $this->belongsTo(TaPengadaan::class, 'No_Kontrak');
    }

    public function noKontrak()
    {
        return $this->belongsTo(TaPengadaan::class, 'No_Kontrak');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPengadaan::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPengadaan::class, 'Tahun');
    }
}