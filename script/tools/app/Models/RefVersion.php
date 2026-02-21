<?php

namespace App\Models;

class RefVersion extends BaseSqlServerModel
{
    protected $table = 'Ref_Version';

    protected $fillable = [
        'Tgl_Update',
        'LastAplDBVer'
    ];
}