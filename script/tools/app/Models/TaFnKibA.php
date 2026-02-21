<?php

namespace App\Models;

class TaFnKibA extends BaseSqlServerModel
{
    protected $table = 'Ta_Fn_KIB_A';

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
        'Harga',
        'Luas_M2',
        'Tgl_Dok',
        'No_Dok',
        'Kd_Pemilik',
        'Tgl_Perolehan',
        'Tgl_Pembukuan',
        'Alamat',
        'Hak_Tanah',
        'Sertifikat_Tanggal',
        'Sertifikat_Nomor',
        'Penggunaan',
        'Asal_usul',
        'Kd_KA',
        'Tgl_D2',
        'Tgl_Proses'
    ];
}