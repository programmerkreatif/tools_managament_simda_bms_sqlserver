<?php

namespace App\Models;

class TaKontrakAddendum extends BaseSqlServerModel
{
    protected $table = 'Ta_Kontrak_Addendum';

    protected $fillable = [
        'Tahun',
        'No_Kontrak',
        'No_Addendum',
        'Tgl_Addendum',
        'Keperluan',
        'Waktu',
        'Nilai'
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