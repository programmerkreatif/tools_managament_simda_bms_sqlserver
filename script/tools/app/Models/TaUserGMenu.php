<?php

namespace App\Models;

class TaUserGMenu extends BaseSqlServerModel
{
    protected $table = 'Ta_User_G_Menu';

    protected $fillable = [
        'V_Group_ID',
        'ID_Menu',
        'Otoritas'
    ];
}