<?php

namespace App\Models;

class RefKabKota extends BaseSqlServerModel
{
    protected $table = 'Ref_Kab_Kota';

    protected $fillable = [
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Nm_Kab_Kota'
    ];

    public function kdProv()
    {
        return $this->belongsTo(RefProvinsi::class, 'Kd_Prov');
    }
}