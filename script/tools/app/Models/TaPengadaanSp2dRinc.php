<?php

namespace App\Models;

class TaPengadaanSp2dRinc extends BaseSqlServerModel
{
    protected $table = 'Ta_Pengadaan_SP2D_Rinc';

    protected $fillable = [
        'Tahun',
        'No_Kontrak',
        'No_SP2D',
        'Jn_SP2D',
        'No_ID',
        'Kd_Rek_1',
        'Kd_Rek_2',
        'Kd_Rek_3',
        'Kd_Rek_4',
        'Kd_Rek_5',
        'Nilai'
    ];

    public function kdRek1()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_1');
    }

    public function kdRek1()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_1');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_2');
    }

    public function kdRek2()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_2');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_3');
    }

    public function kdRek3()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_3');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_4');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_4');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_4');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_4');
    }

    public function kdRek4()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_4');
    }

    public function kdRek5()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_5');
    }

    public function kdRek5()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_5');
    }

    public function kdRek5()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_5');
    }

    public function kdRek5()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_5');
    }

    public function kdRek5()
    {
        return $this->belongsTo(RefRek5::class, 'Kd_Rek_5');
    }

    public function jnSp2d()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'Jn_SP2D');
    }

    public function jnSp2d()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'Jn_SP2D');
    }

    public function jnSp2d()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'Jn_SP2D');
    }

    public function jnSp2d()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'Jn_SP2D');
    }

    public function noKontrak()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'No_Kontrak');
    }

    public function noKontrak()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'No_Kontrak');
    }

    public function noKontrak()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'No_Kontrak');
    }

    public function noKontrak()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'No_Kontrak');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'No_SP2D');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'No_SP2D');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'No_SP2D');
    }

    public function noSp2d()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'No_SP2D');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPengadaanSp2d::class, 'Tahun');
    }
}