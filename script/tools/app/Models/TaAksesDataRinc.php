<?php

namespace App\Models;

class TaAksesDataRinc extends BaseSqlServerModel
{
    protected $table = 'Ta_Akses_Data_Rinc';

    protected $fillable = [
        'Tahun',
        'No_Akses',
        'IDPemda',
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_Aset4',
        'Kd_Aset5',
        'No_Register',
        'Keterangan',
        'Kd_Aset8',
        'Kd_Aset80',
        'Kd_Aset81',
        'Kd_Aset82',
        'Kd_Aset83',
        'Kd_Aset84',
        'Kd_Aset85',
        'No_Reg8'
    ];

    public function noAkses()
    {
        return $this->belongsTo(TaAksesData::class, 'No_Akses');
    }

    public function noAkses()
    {
        return $this->belongsTo(TaAksesData::class, 'No_Akses');
    }

    public function tahun()
    {
        return $this->belongsTo(TaAksesData::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaAksesData::class, 'Tahun');
    }
}