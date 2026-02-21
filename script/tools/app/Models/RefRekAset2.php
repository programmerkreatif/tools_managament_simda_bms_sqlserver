<?php

namespace App\Models;

class RefRekAset2 extends BaseSqlServerModel
{
    protected $table = 'Ref_Rek_Aset2';

    protected $fillable = [
        'Kd_Aset1',
        'Kd_Aset2',
        'Nm_Aset2'
    ];

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset1::class, 'Kd_Aset1');
    }
}