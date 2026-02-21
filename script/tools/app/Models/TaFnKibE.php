<?php

namespace App\Models;

class TaFnKibE extends BaseSqlServerModel
{
    protected $table = 'Ta_Fn_KIB_E';

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
        'Kd_Ruang',
        'Kd_Pemilik',
        'Tgl_Perolehan',
        'Tgl_Pembukuan',
        'Tgl_Dokumen',
        'No_Dokumen',
        'Judul',
        'Pencipta',
        'Bahan',
        'Ukuran',
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