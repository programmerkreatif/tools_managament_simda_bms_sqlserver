<?php

namespace App\Models;

class TaSusute extends BaseSqlServerModel
{
    protected $table = 'Ta_SusutE';

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
        return $this->belongsTo(TaKibE::class, 'IDPemda');
    }
}