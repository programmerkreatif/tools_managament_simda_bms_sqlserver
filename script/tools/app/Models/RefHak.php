<?php

namespace App\Models;

class RefHak extends BaseSqlServerModel
{
    protected $table = 'Ref_Hak';
    protected $primaryKey = 'Kd_Hak';

    protected $fillable = [
        'Nm_Hak'
    ];
}