<?php

namespace App\Models;

class RefSBidang extends BaseSqlServerModel
{
    protected $table = 'Ref_S_Bidang';

    protected $fillable = [
        'Kd_Urusan',
        'Kd_Bidang',
        'Nm_Bidang'
    ];
}