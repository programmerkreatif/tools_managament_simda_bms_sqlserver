<?php

namespace App\Models;

class TaManfaat extends BaseSqlServerModel
{
    protected $table = 'Ta_Manfaat';

    protected $fillable = [
        'No_MOU',
        'No_MOURek',
        'Tgl_MOU',
        'Kd_Riwayat',
        'Keterangan'
    ];
}