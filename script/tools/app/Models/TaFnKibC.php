<?php

namespace App\Models;

class TaFnKibC extends BaseSqlServerModel
{
    protected $table = 'Ta_Fn_KIB_C';

    protected $fillable = [
        'Tahun',
        'IDPemda',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'Kd_Aset',
        'Kd_Aset0',
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_Aset4',
        'Kd_Aset5',
        'No_Register',
        'Kd_Pemilik',
        'Tgl_Perolehan',
        'Tgl_Pembukuan',
        'Bertingkat_Tidak',
        'Beton_tidak',
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
        'Masa_Manfaat',
        'Nilai_Sisa',
        'Kd_KA',
        'Tgl_D2',
        'Tgl_Proses'
    ];
}