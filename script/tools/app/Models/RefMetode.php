<?php

namespace App\Models;

class RefMetode extends BaseSqlServerModel
{
    protected $table = 'Ref_Metode';
    protected $primaryKey = 'Kd_Metode';

    protected $fillable = [
        'Ur_Metode'
    ];
}