<?php

namespace App\Models;

class RefSUnit extends BaseSqlServerModel
{
    protected $table = 'Ref_S_Unit';

    protected $fillable = [
        'Kd_Urusan',
        'Kd_Bidang',
        'Kd_Unit',
        'Nm_Unit'
    ];

    public function kdBidang()
    {
        return $this->belongsTo(RefSBidang::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(RefSBidang::class, 'Kd_Bidang');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(RefSBidang::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(RefSBidang::class, 'Kd_Urusan');
    }
}