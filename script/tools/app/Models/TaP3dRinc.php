<?php

namespace App\Models;

class TaP3dRinc extends BaseSqlServerModel
{
    protected $table = 'Ta_P3D_Rinc';

    protected $fillable = [
        'No_BAST',
        'IDPemda',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB'
    ];

    public function noBast()
    {
        return $this->belongsTo(TaP3d::class, 'No_BAST');
    }
}