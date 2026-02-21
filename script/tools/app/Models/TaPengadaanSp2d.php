<?php

namespace App\Models;

class TaPengadaanSp2d extends BaseSqlServerModel
{
    protected $table = 'Ta_Pengadaan_SP2D';

    protected $fillable = [
        'Tahun',
        'No_Kontrak',
        'No_SP2D',
        'Jn_SP2D',
        'Tgl_SP2D',
        'Nilai',
        'Keterangan',
        'Kd_Ambil'
    ];

    public function noKontrak()
    {
        return $this->belongsTo(TaPengadaan::class, 'No_Kontrak');
    }

    public function noKontrak()
    {
        return $this->belongsTo(TaPengadaan::class, 'No_Kontrak');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPengadaan::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPengadaan::class, 'Tahun');
    }
}