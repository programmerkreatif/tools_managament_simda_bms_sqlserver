<?php

namespace App\Models;

class RefMapRekening extends BaseSqlServerModel
{
    protected $table = 'Ref_Map_Rekening';

    protected $fillable = [
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_Rek_1',
        'Kd_Rek_2',
        'Kd_Rek_3',
        'Kd_Rek_4',
        'Kd_Aset',
        'Kd_Aset0'
    ];
}