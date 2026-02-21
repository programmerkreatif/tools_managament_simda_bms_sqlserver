<?php

namespace App\Models;

class TaPengadaanBast extends BaseSqlServerModel
{
    protected $table = 'Ta_Pengadaan_Bast';

    protected $fillable = [
        'Tahun',
        'No_BAST',
        'No_Kontrak',
        'Tgl_BAST',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'Uraian'
    ];
}