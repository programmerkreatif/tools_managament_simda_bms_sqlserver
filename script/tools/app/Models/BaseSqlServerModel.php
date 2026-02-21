<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BaseSqlServerModel extends Model
{
    public $timestamps = false;
    public $incrementing = false;
    protected $keyType = 'int';
    protected $guarded = [];
}