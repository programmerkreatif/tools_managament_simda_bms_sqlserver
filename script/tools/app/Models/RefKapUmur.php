<?php

namespace App\Models;

class RefKapUmur extends BaseSqlServerModel
{
    protected $table = 'Ref_Kap_Umur';

    protected $fillable = [
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'No_Urut',
        'Bts_Bawah',
        'Bts_Atas',
        'Masa_Manfaat',
        'Jn_Kap',
        'Kd_Aset8',
        'Kd_Aset80',
        'Kd_Aset81',
        'Kd_Aset82',
        'Kd_Aset83'
    ];
}