<?php

namespace App\Models;

class TaDev extends BaseSqlServerModel
{
    protected $table = 'Ta_Dev';
    protected $primaryKey = 'Dev_Id';

    protected $fillable = [
        'Nm_Dev',
        'No_IjinDev',
        'Alamat',
        'Log_User',
        'Log_entry'
    ];
}