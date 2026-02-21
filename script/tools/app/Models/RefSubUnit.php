<?php

namespace App\Models;

class RefSubUnit extends BaseSqlServerModel
{
    protected $table = 'Ref_Sub_Unit';

    protected $fillable = [
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Nm_Sub_Unit'
    ];
}