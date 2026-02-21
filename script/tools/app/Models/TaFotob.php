<?php

namespace App\Models;

class TaFotob extends BaseSqlServerModel
{
    protected $table = 'Ta_FotoB';

    protected $fillable = [
        'IDPemda',
        'No_Id',
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_Aset4',
        'Kd_Aset5',
        'No_Register',
        'Foto_Aset',
        'Nama_foto',
        'Keterangan',
        'Kd_Kecamatan',
        'Kd_Desa',
        'Log_User',
        'Log_entry'
    ];

    public function idpemda()
    {
        return $this->belongsTo(TaKibB::class, 'IDPemda');
    }
}