<?php

namespace App\Models;

class TaUserG extends BaseSqlServerModel
{
    protected $table = 'Ta_User_G';
    protected $primaryKey = 'V_Group_ID';

    protected $fillable = [
        'V_Group_Nm',
        'V_Group_Level'
    ];
}