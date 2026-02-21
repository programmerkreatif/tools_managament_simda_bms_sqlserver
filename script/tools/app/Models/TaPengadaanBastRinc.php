<?php

namespace App\Models;

class TaPengadaanBastRinc extends BaseSqlServerModel
{
    protected $table = 'Ta_Pengadaan_Bast_Rinc';

    protected $fillable = [
        'Tahun',
        'No_BAST',
        'Kd_Aset1',
        'Kd_Aset2',
        'Kd_Aset3',
        'Kd_Aset4',
        'Kd_Aset5',
        'No_Register',
        'Kd_Pemilik',
        'Kd_Ruang',
        'Tgl_Perolehan',
        'Tgl_Pembukuan',
        'Judul',
        'Type',
        'CC',
        'Bahan',
        'Nomor_Pabrik',
        'Nomor_Rangka',
        'Nomor_Mesin',
        'Nomor_Polisi',
        'Nomor_BPKB',
        'Luas_Lantai',
        'Panjang',
        'Lebar',
        'Lokasi',
        'Dokumen_Tanggal',
        'Dokumen_Nomor',
        'Hak_Tanah',
        'Penggunaan',
        'Konstruksi',
        'Bertingkat_Tidak',
        'Beton_Tidak',
        'Pencipta',
        'Ukuran',
        'Asal_Usul',
        'Kondisi',
        'Harga',
        'Masa_Manfaat',
        'Nilai_Sisa',
        'Keterangan',
        'No_SP2D',
        'No_ID',
        'Invent',
        'Kd_Penyusutan',
        'Kd_Data',
        'Log_User',
        'Log_entry',
        'Kd_KA',
        'Kd_Hapus',
        'Kd_Aset8',
        'Kd_Aset80',
        'Kd_Aset81',
        'Kd_Aset82',
        'Kd_Aset83',
        'Kd_Aset84',
        'Kd_Aset85',
        'Tg_Update8',
        'No_Reg8'
    ];

    public function noBast()
    {
        return $this->belongsTo(TaPengadaanBast::class, 'No_BAST');
    }

    public function noBast()
    {
        return $this->belongsTo(TaPengadaanBast::class, 'No_BAST');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPengadaanBast::class, 'Tahun');
    }

    public function tahun()
    {
        return $this->belongsTo(TaPengadaanBast::class, 'Tahun');
    }
}