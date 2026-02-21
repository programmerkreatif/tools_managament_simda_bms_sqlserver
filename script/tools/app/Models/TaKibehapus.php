<?php

namespace App\Models;

class TaKibehapus extends BaseSqlServerModel
{
    protected $table = 'Ta_KIBEHapus';
    protected $primaryKey = 'IDPemda';

    protected $fillable = [
        'No_SK',
        'Tgl_SK',
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
        'Kd_Ruang',
        'Kd_Pemilik',
        'Tgl_Perolehan',
        'Tgl_Pembukuan',
        'Judul',
        'Pencipta',
        'Bahan',
        'Ukuran',
        'Asal_usul',
        'Kondisi',
        'Harga',
        'Masa_Manfaat',
        'Nilai_Sisa',
        'Keterangan',
        'Tahun',
        'No_SP2D',
        'No_ID',
        'Kd_Kecamatan',
        'Kd_Desa',
        'Invent',
        'Kd_Alasan',
        'Kd_Penyusutan',
        'Kd_Data',
        'Kd_KA',
        'No_SKGuna',
        'Log_User',
        'Log_entry',
        'No_BA',
        'Flag',
        'IDData',
        'Kd_Aset8',
        'Kd_Aset80',
        'Kd_Aset81',
        'Kd_Aset82',
        'Kd_Aset83',
        'Kd_Aset84',
        'Kd_Aset85'
    ];

    public function idpemda()
    {
        return $this->belongsTo(TaKibE::class, 'IDPemda');
    }
}