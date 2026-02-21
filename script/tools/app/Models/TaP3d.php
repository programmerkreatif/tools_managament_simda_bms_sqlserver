<?php

namespace App\Models;

class TaP3d extends BaseSqlServerModel
{
    protected $table = 'Ta_P3D';
    protected $primaryKey = 'No_BAST';

    protected $fillable = [
        'Tanggal',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Nm_Kab_Kota'
    ];
}