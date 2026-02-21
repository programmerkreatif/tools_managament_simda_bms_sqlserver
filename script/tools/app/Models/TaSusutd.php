<?php

namespace App\Models;

class TaSusutd extends BaseSqlServerModel
{
    protected $table = 'Ta_SusutD';

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
        return $this->belongsTo(TaKibD::class, 'IDPemda');
    }
}