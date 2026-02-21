<?php

namespace App\Models;

class TaProgram extends BaseSqlServerModel
{
    protected $table = 'Ta_Program';

    protected $fillable = [
        'Tahun',
        'Kd_Urusan',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_Prog',
        'ID_Prog',
        'Ket_Program',
        'Tolak_Ukur',
        'Target_Angka',
        'Target_Uraian',
        'Kd_Urusan1',
        'Kd_Bidang1'
    ];

    public function kdBidang()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Bidang');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Sub');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Unit');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_Urusan');
    }
}