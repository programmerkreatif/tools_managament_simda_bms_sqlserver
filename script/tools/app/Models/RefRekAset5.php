<?php

namespace App\Models;

class RefRekAset5 extends BaseSqlServerModel
{
    protected $table = 'Ref_Rek_Aset5';

    protected $fillable = [
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_Aset4',
        'Kd_Aset5',
        'Nm_Aset5'
    ];

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset1');
    }

    public function kdAset1()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset1');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset2');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset2');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset2');
    }

    public function kdAset2()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset2');
    }

    public function kdAset3()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset3');
    }

    public function kdAset3()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset3');
    }

    public function kdAset3()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset3');
    }

    public function kdAset3()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset3');
    }

    public function kdAset4()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset4');
    }

    public function kdAset4()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset4');
    }

    public function kdAset4()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset4');
    }

    public function kdAset4()
    {
        return $this->belongsTo(RefRekAset4::class, 'Kd_Aset4');
    }
}