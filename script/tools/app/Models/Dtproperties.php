<?php

namespace App\Models;

class Dtproperties extends BaseSqlServerModel
{
    protected $table = 'dtproperties';

    protected $fillable = [
        'id',
        'objectid',
        'property',
        'value',
        'uvalue',
        'lvalue',
        'version'
    ];
}