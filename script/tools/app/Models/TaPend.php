<?php

namespace App\Models;

class TaPend extends BaseSqlServerModel
{
    protected $table = 'Ta_PenD';

    protected $fillable = [
        'Kd_Prov',
        'Kd_Kab_Kota',
        'Kd_Bidang',
        'Kd_Unit',
        'Kd_Sub',
        'Kd_UPB',
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_Aset4',
        'Kd_Aset5',
        'No_Register',
        'Harga',
        'No_Kontrak',
        'Tgl_Kontrak',
        'Tgl_Perolehan',
        'Tgl_Pembukuan',
        'Log_User',
        'Log_entry',
        'Kd_Aset8',
        'Kd_Aset80',
        'Kd_Aset81',
        'Kd_Aset82',
        'Kd_Aset83',
        'Kd_Aset84',
        'Kd_Aset85',
        'No_Reg8'
    ];
}