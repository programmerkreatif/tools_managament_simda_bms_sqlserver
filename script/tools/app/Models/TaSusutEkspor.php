<?php

namespace App\Models;

class TaSusutEkspor extends BaseSqlServerModel
{
    protected $table = 'Ta_Susut_Ekspor';

    protected $fillable = [
        'Tahun',
        'Kd_UrusanS',
        'Kd_BidangS',
        'Kd_UnitS',
        'Kd_SubS',
        'Kd_Rek_1',
        'Kd_Rek_2',
        'Kd_Rek_3',
        'Kd_Rek_4',
        'Nilai_Susut1',
        'Nilai_Susut2'
    ];
}