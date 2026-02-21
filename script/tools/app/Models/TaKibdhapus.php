<?php

namespace App\Models;

class TaKibdhapus extends BaseSqlServerModel
{
    protected $table = 'Ta_KIBDHapus';
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
        'Kd_Pemilik',
        'Tgl_Perolehan',
        'Tgl_Pembukuan',
        'Konstruksi',
        'Panjang',
        'Lebar',
        'Luas',
        'Lokasi',
        'Dokumen_Tanggal',
        'Dokumen_Nomor',
        'Status_Tanah',
        'Kd_Tanah1',
        'Kd_Tanah2',
        'Kd_Tanah3',
        'Kd_Tanah4',
        'Kd_Tanah5',
        'Kode_Tanah',
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
        return $this->belongsTo(TaKibD::class, 'IDPemda');
    }
}