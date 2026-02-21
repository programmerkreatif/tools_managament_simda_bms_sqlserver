<?php

namespace App\Models;

class TaPenggunaan extends BaseSqlServerModel
{
    protected $table = 'Ta_Penggunaan';

    protected $fillable = [
        'Tahun',
        'No_SKGuna',
        'Tgl_SKGuna',
        'Keterangan'
    ];
}