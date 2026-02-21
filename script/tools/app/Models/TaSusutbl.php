<?php

namespace App\Models;

class TaSusutbl extends BaseSqlServerModel
{
    protected $table = 'Ta_SusutBL';

    protected $fillable = [
        'Tahun',
        'IDPemda',
        'Harga',
        'Nilai_Susut1',
        'Nilai_Susut2',
        'Akum_Susut',
        'Nilai_Sisa',
        'Sisa_Umur',
        'Jndt',
        'Kawal'
    ];

    public function idpemda()
    {
        return $this->belongsTo(TaKibB::class, 'IDPemda');
    }
}