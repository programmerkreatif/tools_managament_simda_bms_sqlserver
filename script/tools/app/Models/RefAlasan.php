<?php

namespace App\Models;

class RefAlasan extends BaseSqlServerModel
{
    protected $table = 'Ref_Alasan';
    protected $primaryKey = 'Kd_Alasan';

    protected $fillable = [
        'Ur_Alasan'
    ];
}