<?php

namespace App\Models;

class TaUserSatker extends BaseSqlServerModel
{
    protected $table = 'Ta_User_Satker';

    protected $fillable = [
        'User_ID',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB'
    ];

    public function userId()
    {
        return $this->belongsTo(TaUserid::class, 'User_ID');
    }
}