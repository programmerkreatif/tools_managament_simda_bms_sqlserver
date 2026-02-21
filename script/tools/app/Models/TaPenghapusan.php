<?php

namespace App\Models;

class TaPenghapusan extends BaseSqlServerModel
{
    protected $table = 'Ta_Penghapusan';

    protected $fillable = [
        'Tahun',
        'No_SK',
        'Tgl_SK',
        'Keterangan',
        'Kd_Hapus'
    ];
}