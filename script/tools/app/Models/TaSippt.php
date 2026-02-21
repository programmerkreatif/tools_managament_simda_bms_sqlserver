<?php

namespace App\Models;

class TaSippt extends BaseSqlServerModel
{
    protected $table = 'Ta_SIPPT';

    protected $fillable = [
        'Dev_Id',
        'No_SIPPT',
        'Tgl_SIPPT',
        'Luas_SIPPT',
        'Lokasi',
        'Keterangan',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Kecamatan',
        'Kd_Desa',
        'Log_User',
        'Log_entry'
    ];

    public function devId()
    {
        return $this->belongsTo(TaDev::class, 'Dev_Id');
    }
}