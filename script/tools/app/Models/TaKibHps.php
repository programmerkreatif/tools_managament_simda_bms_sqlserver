<?php

namespace App\Models;

class TaKibHps extends BaseSqlServerModel
{
    protected $table = 'Ta_KIB_Hps';

    protected $fillable = [
        'IDPemda',
        'IDUser',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'IDUrut',
        'Kd_Hapus',
        'Kd_Barang',
        'No_Register',
        'Nm_Aset',
        'Harga',
        'Kondisi'
    ];
}