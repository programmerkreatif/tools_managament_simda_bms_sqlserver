<?php

namespace App\Models;

class RefMapUnit extends BaseSqlServerModel
{
    protected $table = 'Ref_Map_Unit';

    protected $fillable = [
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UrusanS',
        'Kd_BidangS',
        'Kd_UnitS',
        'Kd_SubS'
    ];

    public function kdBidangs()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_BidangS');
    }

    public function kdBidangs()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_BidangS');
    }

    public function kdBidangs()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_BidangS');
    }

    public function kdBidangs()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_BidangS');
    }

    public function kdSubs()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_SubS');
    }

    public function kdSubs()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_SubS');
    }

    public function kdSubs()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_SubS');
    }

    public function kdSubs()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_SubS');
    }

    public function kdUnits()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_UnitS');
    }

    public function kdUnits()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_UnitS');
    }

    public function kdUnits()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_UnitS');
    }

    public function kdUnits()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_UnitS');
    }

    public function kdUrusans()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_UrusanS');
    }

    public function kdUrusans()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_UrusanS');
    }

    public function kdUrusans()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_UrusanS');
    }

    public function kdUrusans()
    {
        return $this->belongsTo(RefSSubUnit::class, 'Kd_UrusanS');
    }
}