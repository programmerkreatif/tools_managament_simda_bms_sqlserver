<?php

namespace App\Models;

class RefMenu extends BaseSqlServerModel
{
    protected $table = 'Ref_Menu';

    protected $fillable = [
        'User_ID',
        'ID_Menu',
        'Otoritas'
    ];

    public function userId()
    {
        return $this->belongsTo(TaUserid::class, 'User_ID');
    }
}