<?php

namespace App\Models;

class TaKa extends BaseSqlServerModel
{
    protected $table = 'Ta_KA';

    protected $fillable = [
        'Tahun',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'MinSatuan',
        'MinTotal',
        'ThnPenyusutan',
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_KA',
        'Kd_Aset8',
        'Kd_Aset80',
        'Kd_Aset81',
        'Kd_Aset82',
        'Kd_Aset83'
    ];
}