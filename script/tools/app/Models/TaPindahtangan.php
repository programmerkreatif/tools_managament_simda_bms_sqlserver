<?php

namespace App\Models;

class TaPindahtangan extends BaseSqlServerModel
{
    protected $table = 'Ta_Pindahtangan';

    protected $fillable = [
        'Tahun',
        'No_BA',
        'Tgl_BA',
        'Keterangan',
        'Kd_Musnah'
    ];
}