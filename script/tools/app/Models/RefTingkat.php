<?php

namespace App\Models;

class RefTingkat extends BaseSqlServerModel
{
    protected $table = 'Ref_Tingkat';
    protected $primaryKey = 'Kd_Level';

    protected $fillable = [
        'Nm_Level'
    ];
}