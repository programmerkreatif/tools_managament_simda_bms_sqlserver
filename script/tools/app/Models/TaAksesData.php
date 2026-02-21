<?php

namespace App\Models;

class TaAksesData extends BaseSqlServerModel
{
    protected $table = 'Ta_Akses_Data';

    protected $fillable = [
        'Tahun',
        'No_Akses',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'Tgl_Akses',
        'Keterangan',
        'Status'
    ];
}