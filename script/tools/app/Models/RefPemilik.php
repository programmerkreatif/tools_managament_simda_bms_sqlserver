<?php

namespace App\Models;

class RefPemilik extends BaseSqlServerModel
{
    protected $table = 'Ref_Pemilik';
    protected $primaryKey = 'Kd_Pemilik';

    protected $fillable = [
        'Nm_Pemilik'
    ];
}