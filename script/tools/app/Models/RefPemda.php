<?php

namespace App\Models;

class RefPemda extends BaseSqlServerModel
{
    protected $table = 'Ref_Pemda';

    protected $fillable = [
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Nm_Pemda',
        'Ibukota',
        'Alamat',
        'Logo',
        'Basis',
        'Acc_Name'
    ];

    public function kdKabKota()
    {
        return $this->belongsTo(RefKabKota::class, 'Kd_Kab_Kota');
    }

    public function kdKabKota()
    {
        return $this->belongsTo(RefKabKota::class, 'Kd_Kab_Kota');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefKabKota::class, 'Kd_Prov');
    }

    public function kdProv()
    {
        return $this->belongsTo(RefKabKota::class, 'Kd_Prov');
    }
}