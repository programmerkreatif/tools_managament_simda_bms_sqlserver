<?php

namespace App\Models;

class RefRekAset3 extends BaseSqlServerModel
{
    protected $table = 'Ref_Rek_Aset3';

    protected $fillable = [
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Nm_Aset3'
    ];

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset2::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset2::class, 'Kd_Aset1');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRekAset2::class, 'Kd_Aset2');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRekAset2::class, 'Kd_Aset2');
    }
}