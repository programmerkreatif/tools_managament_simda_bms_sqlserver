<?php

namespace App\Models;

class RefSSubUnit extends BaseSqlServerModel
{
    protected $table = 'Ref_S_Sub_Unit';

    protected $fillable = [
        'Kd_Urusan',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Nm_Sub_Unit'
    ];

    public function kdBidang()
    {
        return $this->belongsTo(RefSUnit::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefSUnit::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefSUnit::class, 'Kd_Bidang');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSUnit::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSUnit::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(RefSUnit::class, 'Kd_Unit');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(RefSUnit::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(RefSUnit::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(RefSUnit::class, 'Kd_Urusan');
    }
}