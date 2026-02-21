<?php

namespace App\Models;

class TaKegiatan extends BaseSqlServerModel
{
    protected $table = 'Ta_Kegiatan';

    protected $fillable = [
        'Tahun',
        'Kd_Urusan',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_Prog',
        'ID_Prog',
        'Kd_Keg',
        'Ket_Kegiatan',
        'Lokasi',
        'Kelompok_Sasaran',
        'Status_Kegiatan',
        'Pagu_Anggaran',
        'Waktu_Pelaksanaan',
        'Kd_Sumber'
    ];

    public function idProg()
    {
        return $this->belongsTo(TaProgram::class, 'ID_Prog');
    }

    public function idProg()
    {
        return $this->belongsTo(TaProgram::class, 'ID_Prog');
    }

    public function idProg()
    {
        return $this->belongsTo(TaProgram::class, 'ID_Prog');
    }

    public function idProg()
    {
        return $this->belongsTo(TaProgram::class, 'ID_Prog');
    }

    public function idProg()
    {
        return $this->belongsTo(TaProgram::class, 'ID_Prog');
    }

    public function idProg()
    {
        return $this->belongsTo(TaProgram::class, 'ID_Prog');
    }

    public function idProg()
    {
        return $this->belongsTo(TaProgram::class, 'ID_Prog');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Bidang');
    }

    public function kdBidang()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Bidang');
    }

    public function kdProg()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Prog');
    }

    public function kdProg()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Prog');
    }

    public function kdProg()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Prog');
    }

    public function kdProg()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Prog');
    }

    public function kdProg()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Prog');
    }

    public function kdProg()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Prog');
    }

    public function kdProg()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Prog');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Sub');
    }

    public function kdSub()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Sub');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Unit');
    }

    public function kdUnit()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Unit');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Urusan');
    }

    public function kdUrusan()
    {
        return $this->belongsTo(TaProgram::class, 'Kd_Urusan');
    }

    public function tahun()
    {
        return $this->belongsTo(TaProgram::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaProgram::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaProgram::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaProgram::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaProgram::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaProgram::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaProgram::class, 'Tahun');
    }
}