<?php

namespace App\Models;

class TaUserid extends BaseSqlServerModel
{
    protected $table = 'Ta_UserID';
    protected $primaryKey = 'User_ID';

    protected $fillable = [
        'Pwd',
        'Full_Name',
        'Keterangan',
        'Kd_Level',
        'V_Group_ID'
    ];
}