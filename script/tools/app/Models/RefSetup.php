<?php

namespace App\Models;

class RefSetup extends BaseSqlServerModel
{
    protected $table = 'Ref_Setup';

    protected $fillable = [
        'Tahun',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Penyebut',
        'Kd_Penambahan',
        'Kd_Batasan'
    ];
}