buatkan model laravel 


-- Adminer 5.4.1 MS SQL 15.00.4455 dump

DROP TABLE IF EXISTS [dbo].[dtproperties];
CREATE TABLE [dbo].[dtproperties] (
	[id] int NOT NULL IDENTITY PRIMARY KEY,
	[objectid] int NULL,
	[property] varchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[value] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[uvalue] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lvalue] image NULL,
	[version] int NOT NULL DEFAULT '(0)'
);


DROP TABLE IF EXISTS [dbo].[Ref_Alasan];
CREATE TABLE [dbo].[Ref_Alasan] (
	[Kd_Alasan] tinyint NOT NULL,
	[Ur_Alasan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Alasan] PRIMARY KEY ([Kd_Alasan])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Alasan] ON [dbo].[Ref_Alasan] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Bidang];
CREATE TABLE [dbo].[Ref_Bidang] (
	[Kd_Bidang] tinyint NOT NULL,
	[Nm_Bidang] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Bidang] PRIMARY KEY ([Kd_Bidang])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Bidang] ON [dbo].[Ref_Bidang] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Desa];
CREATE TABLE [dbo].[Ref_Desa] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Kecamatan] smallint NOT NULL,
	[Kd_Desa] smallint NOT NULL,
	[Nm_Desa] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Desa] PRIMARY KEY ([Kd_Desa], [Kd_Kecamatan], [Kd_Kab_Kota], [Kd_Prov])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Desa] ON [dbo].[Ref_Desa] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Hak];
CREATE TABLE [dbo].[Ref_Hak] (
	[Kd_Hak] tinyint NOT NULL,
	[Nm_Hak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Hak] PRIMARY KEY ([Kd_Hak])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Hak] ON [dbo].[Ref_Hak] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Kab_Kota];
CREATE TABLE [dbo].[Ref_Kab_Kota] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Nm_Kab_Kota] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Kab_Kota] PRIMARY KEY ([Kd_Kab_Kota], [Kd_Prov])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Kab_Kota] ON [dbo].[Ref_Kab_Kota] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Kap_Umur];
CREATE TABLE [dbo].[Ref_Kap_Umur] (
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[No_Urut] tinyint NOT NULL,
	[Bts_Bawah] tinyint NULL,
	[Bts_Atas] tinyint NULL,
	[Masa_Manfaat] tinyint NULL,
	[Jn_Kap] tinyint NULL,
	[Kd_Aset8] tinyint NOT NULL,
	[Kd_Aset80] tinyint NOT NULL,
	[Kd_Aset81] tinyint NOT NULL,
	[Kd_Aset82] tinyint NOT NULL,
	[Kd_Aset83] tinyint NOT NULL
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Kap_Umur] ON [dbo].[Ref_Kap_Umur] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Kecamatan];
CREATE TABLE [dbo].[Ref_Kecamatan] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Kecamatan] smallint NOT NULL,
	[Nm_Kecamatan] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Kecamatan] PRIMARY KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Kecamatan])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Kecamatan] ON [dbo].[Ref_Kecamatan] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Kondisi];
CREATE TABLE [dbo].[Ref_Kondisi] (
	[Kd_Kondisi] tinyint NOT NULL,
	[Uraian] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Kondisi] PRIMARY KEY ([Kd_Kondisi])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Kondisi] ON [dbo].[Ref_Kondisi] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Map_Rekening];
CREATE TABLE [dbo].[Ref_Map_Rekening] (
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Rek_1] tinyint NOT NULL,
	[Kd_Rek_2] tinyint NOT NULL,
	[Kd_Rek_3] tinyint NOT NULL,
	[Kd_Rek_4] tinyint NOT NULL,
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	CONSTRAINT [PK_Ref_Map_Rekening] PRIMARY KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset], [Kd_Aset0])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Map_Rekening] ON [dbo].[Ref_Map_Rekening] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Map_Unit];
CREATE TABLE [dbo].[Ref_Map_Unit] (
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UrusanS] tinyint NOT NULL,
	[Kd_BidangS] tinyint NOT NULL,
	[Kd_UnitS] tinyint NOT NULL,
	[Kd_SubS] smallint NOT NULL,
	CONSTRAINT [PK_Ref_Map_Unit] PRIMARY KEY ([Kd_Bidang], [Kd_Unit], [Kd_Sub])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Map_Unit] ON [dbo].[Ref_Map_Unit] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Map5_17_108];
CREATE TABLE [dbo].[Ref_Map5_17_108] (
	[Kd1] tinyint NOT NULL,
	[Kd2] tinyint NOT NULL,
	[Kd3] tinyint NOT NULL,
	[kd4] tinyint NOT NULL,
	[Kd5] tinyint NOT NULL,
	[Nm_Aset5_17] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Nm_Aset5_17s] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[Nm_Aset5] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Sts] tinyint NOT NULL,
	CONSTRAINT [PK_Ref_Map5_17_108] PRIMARY KEY ([Kd1], [Kd2], [Kd3], [kd4], [Kd5])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Map5_17_108] ON [dbo].[Ref_Map5_17_108] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Masalah];
CREATE TABLE [dbo].[Ref_Masalah] (
	[Kd_Masalah] tinyint NOT NULL,
	[Nm_Masalah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Masalah] PRIMARY KEY ([Kd_Masalah])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Masalah] ON [dbo].[Ref_Masalah] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Menu];
CREATE TABLE [dbo].[Ref_Menu] (
	[User_ID] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_Menu] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Otoritas] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Menu] PRIMARY KEY ([User_ID], [ID_Menu])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Menu] ON [dbo].[Ref_Menu] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Metode];
CREATE TABLE [dbo].[Ref_Metode] (
	[Kd_Metode] tinyint NOT NULL,
	[Ur_Metode] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Metode] PRIMARY KEY ([Kd_Metode])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Metode] ON [dbo].[Ref_Metode] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Pemda];
CREATE TABLE [dbo].[Ref_Pemda] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Nm_Pemda] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Ibukota] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Alamat] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Logo] image NULL,
	[Basis] smallint NULL,
	[Acc_Name] varchar(75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Pemda] PRIMARY KEY ([Kd_Prov], [Kd_Kab_Kota])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Pemda] ON [dbo].[Ref_Pemda] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Pemilik];
CREATE TABLE [dbo].[Ref_Pemilik] (
	[Kd_Pemilik] tinyint NOT NULL,
	[Nm_Pemilik] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Pemilik] PRIMARY KEY ([Kd_Pemilik])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Pemilik] ON [dbo].[Ref_Pemilik] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Penyusutan];
CREATE TABLE [dbo].[Ref_Penyusutan] (
	[Tahun] smallint NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Metode] tinyint NOT NULL DEFAULT '(0)',
	[Umur] tinyint NULL,
	[ThnPenyusutan] tinyint NULL DEFAULT '(1)',
	[Kd_Aset8] tinyint NOT NULL,
	[Kd_Aset80] tinyint NOT NULL,
	[Kd_Aset81] tinyint NOT NULL,
	[Kd_Aset82] tinyint NOT NULL,
	[Kd_Aset83] tinyint NOT NULL,
	[Kd_Aset84] tinyint NOT NULL
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Penyusutan] ON [dbo].[Ref_Penyusutan] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Pindahtangan];
CREATE TABLE [dbo].[Ref_Pindahtangan] (
	[Kd_Musnah] tinyint NOT NULL,
	[Keterangan_Musnah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Pindahtangan] PRIMARY KEY ([Kd_Musnah])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Pindahtangan] ON [dbo].[Ref_Pindahtangan] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Provinsi];
CREATE TABLE [dbo].[Ref_Provinsi] (
	[Kd_Prov] tinyint NOT NULL,
	[Nm_Provinsi] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Provinsi] PRIMARY KEY ([Kd_Prov])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Provinsi] ON [dbo].[Ref_Provinsi] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek_1];
CREATE TABLE [dbo].[Ref_Rek_1] (
	[Kd_Rek_1] tinyint NOT NULL,
	[Nm_Rek_1] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek_1] PRIMARY KEY ([Kd_Rek_1])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek_1] ON [dbo].[Ref_Rek_1] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek_2];
CREATE TABLE [dbo].[Ref_Rek_2] (
	[Kd_Rek_1] tinyint NOT NULL,
	[Kd_Rek_2] tinyint NOT NULL,
	[Nm_Rek_2] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek_2] PRIMARY KEY ([Kd_Rek_1], [Kd_Rek_2])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek_2] ON [dbo].[Ref_Rek_2] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek_3];
CREATE TABLE [dbo].[Ref_Rek_3] (
	[Kd_Rek_1] tinyint NOT NULL,
	[Kd_Rek_2] tinyint NOT NULL,
	[Kd_Rek_3] tinyint NOT NULL,
	[Nm_Rek_3] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SaldoNorm] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL DEFAULT 'D',
	CONSTRAINT [PK_Ref_Rek_3] PRIMARY KEY ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek_3] ON [dbo].[Ref_Rek_3] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek_4];
CREATE TABLE [dbo].[Ref_Rek_4] (
	[Kd_Rek_1] tinyint NOT NULL,
	[Kd_Rek_2] tinyint NOT NULL,
	[Kd_Rek_3] tinyint NOT NULL,
	[Kd_Rek_4] tinyint NOT NULL,
	[Nm_Rek_4] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek_4] PRIMARY KEY ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3], [Kd_Rek_4])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek_4] ON [dbo].[Ref_Rek_4] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek_5];
CREATE TABLE [dbo].[Ref_Rek_5] (
	[Kd_Rek_1] tinyint NOT NULL,
	[Kd_Rek_2] tinyint NOT NULL,
	[Kd_Rek_3] tinyint NOT NULL,
	[Kd_Rek_4] tinyint NOT NULL,
	[Kd_Rek_5] tinyint NOT NULL,
	[Nm_Rek_5] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Peraturan] varchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Rek_5] PRIMARY KEY ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3], [Kd_Rek_4], [Kd_Rek_5])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek_5] ON [dbo].[Ref_Rek_5] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek_Aset1];
CREATE TABLE [dbo].[Ref_Rek_Aset1] (
	[Kd_Aset1] tinyint NOT NULL,
	[Nm_Aset1] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek_Aset1] PRIMARY KEY ([Kd_Aset1])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek_Aset1] ON [dbo].[Ref_Rek_Aset1] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek_Aset2];
CREATE TABLE [dbo].[Ref_Rek_Aset2] (
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Nm_Aset2] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek_Aset2] PRIMARY KEY ([Kd_Aset1], [Kd_Aset2])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek_Aset2] ON [dbo].[Ref_Rek_Aset2] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek_Aset3];
CREATE TABLE [dbo].[Ref_Rek_Aset3] (
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Nm_Aset3] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek_Aset3] PRIMARY KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek_Aset3] ON [dbo].[Ref_Rek_Aset3] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek_Aset4];
CREATE TABLE [dbo].[Ref_Rek_Aset4] (
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Nm_Aset4] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek_Aset4] PRIMARY KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek_Aset4] ON [dbo].[Ref_Rek_Aset4] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek_Aset5];
CREATE TABLE [dbo].[Ref_Rek_Aset5] (
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] tinyint NOT NULL,
	[Nm_Aset5] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Rek_Aset5] PRIMARY KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek_Aset5] ON [dbo].[Ref_Rek_Aset5] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek0_108];
CREATE TABLE [dbo].[Ref_Rek0_108] (
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Nm_Aset0] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek00_108] PRIMARY KEY ([Kd_Aset], [Kd_Aset0])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek0_108] ON [dbo].[Ref_Rek0_108] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek1_108];
CREATE TABLE [dbo].[Ref_Rek1_108] (
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Nm_Aset1] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek1_108] PRIMARY KEY ([Kd_Aset], [Kd_Aset0], [Kd_Aset1])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek1_108] ON [dbo].[Ref_Rek1_108] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek2_108];
CREATE TABLE [dbo].[Ref_Rek2_108] (
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Nm_Aset2] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek2_108] PRIMARY KEY ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek2_108] ON [dbo].[Ref_Rek2_108] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek3_108];
CREATE TABLE [dbo].[Ref_Rek3_108] (
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Nm_Aset3] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek3_108] PRIMARY KEY ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2], [Kd_Aset3])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek3_108] ON [dbo].[Ref_Rek3_108] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek4_108];
CREATE TABLE [dbo].[Ref_Rek4_108] (
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Nm_Aset4] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Rek4_108] PRIMARY KEY ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek4_108] ON [dbo].[Ref_Rek4_108] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Rek5_108];
CREATE TABLE [dbo].[Ref_Rek5_108] (
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[Nm_Aset5] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Rek5_108] PRIMARY KEY ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Rek5_108] ON [dbo].[Ref_Rek5_108] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Riwayat];
CREATE TABLE [dbo].[Ref_Riwayat] (
	[Kd_Riwayat] tinyint NOT NULL,
	[Nm_Riwayat] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Riwayat] PRIMARY KEY ([Kd_Riwayat])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Riwayat] ON [dbo].[Ref_Riwayat] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_S_Bidang];
CREATE TABLE [dbo].[Ref_S_Bidang] (
	[Kd_Urusan] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Nm_Bidang] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_S_Bidang] PRIMARY KEY ([Kd_Bidang], [Kd_Urusan])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_S_Bidang] ON [dbo].[Ref_S_Bidang] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_S_Sub_Unit];
CREATE TABLE [dbo].[Ref_S_Sub_Unit] (
	[Kd_Urusan] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] tinyint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Nm_Sub_Unit] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_S_Sub_Unit] PRIMARY KEY ([Kd_Urusan], [Kd_Bidang], [Kd_Unit], [Kd_Sub])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_S_Sub_Unit] ON [dbo].[Ref_S_Sub_Unit] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_S_Unit];
CREATE TABLE [dbo].[Ref_S_Unit] (
	[Kd_Urusan] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] tinyint NOT NULL,
	[Nm_Unit] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_S_Unit] PRIMARY KEY ([Kd_Urusan], [Kd_Bidang], [Kd_Unit])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_S_Unit] ON [dbo].[Ref_S_Unit] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Setup];
CREATE TABLE [dbo].[Ref_Setup] (
	[Tahun] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Penyebut] tinyint NULL,
	[Kd_Penambahan] tinyint NULL,
	[Kd_Batasan] tinyint NULL,
	CONSTRAINT [PK_Ref_Setting] PRIMARY KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Setup] ON [dbo].[Ref_Setup] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Sub_Unit];
CREATE TABLE [dbo].[Ref_Sub_Unit] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Nm_Sub_Unit] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Sub_Unit] PRIMARY KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Sub_Unit] ON [dbo].[Ref_Sub_Unit] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Tingkat];
CREATE TABLE [dbo].[Ref_Tingkat] (
	[Kd_Level] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Nm_Level] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ref_Tingkat] PRIMARY KEY ([Kd_Level])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Tingkat] ON [dbo].[Ref_Tingkat] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Unit];
CREATE TABLE [dbo].[Ref_Unit] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Nm_Unit] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_Ref_Unit] PRIMARY KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Unit] ON [dbo].[Ref_Unit] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_UPB];
CREATE TABLE [dbo].[Ref_UPB] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Nm_UPB] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	CONSTRAINT [PK_Ref_UPB] PRIMARY KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB])
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_UPB] ON [dbo].[Ref_UPB] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ref_Version];
CREATE TABLE [dbo].[Ref_Version] (
	[Tgl_Update] datetime NOT NULL,
	[LastAplDBVer] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


DELIMITER ;;
CREATE TRIGGER [trgCekRef_Version] ON [dbo].[Ref_Version] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Akses_Data];
CREATE TABLE [dbo].[Ta_Akses_Data] (
	[Tahun] smallint NOT NULL,
	[No_Akses] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Tgl_Akses] datetime NOT NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status] smallint NOT NULL DEFAULT '(0)',
	CONSTRAINT [PK_Ta_Akses_Data] PRIMARY KEY ([Tahun], [No_Akses])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Akses_Data] ON [dbo].[Ta_Akses_Data] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Akses_Data_Rinc];
CREATE TABLE [dbo].[Ta_Akses_Data_Rinc] (
	[Tahun] smallint NOT NULL,
	[No_Akses] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] int NULL,
	[No_Register] int NULL,
	[Keterangan] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	[No_Reg8] int NULL,
	CONSTRAINT [PK_Ta_Akses_Data_Rinc] PRIMARY KEY ([Tahun], [No_Akses], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Akses_Data_Rinc] ON [dbo].[Ta_Akses_Data_Rinc] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Dev];
CREATE TABLE [dbo].[Ta_Dev] (
	[Dev_Id] smallint NOT NULL,
	[Nm_Dev] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_IjinDev] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Alamat] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	CONSTRAINT [PK_Ta_Dev] PRIMARY KEY ([Dev_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Dev] ON [dbo].[Ta_Dev] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Fn_KIB_A];
CREATE TABLE [dbo].[Ta_Fn_KIB_A] (
	[Tahun] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Harga] money NOT NULL,
	[Luas_M2] real NULL,
	[Tgl_Dok] datetime NULL,
	[No_Dok] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Alamat] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Hak_Tanah] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Sertifikat_Tanggal] datetime NULL,
	[Sertifikat_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Penggunaan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_KA] tinyint NOT NULL,
	[Tgl_D2] datetime NOT NULL,
	[Tgl_Proses] datetime NOT NULL,
	CONSTRAINT [PK_Ta_Fn_KIB_A] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Fn_KIB_A] ON [dbo].[Ta_Fn_KIB_A] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Fn_KIB_B];
CREATE TABLE [dbo].[Ta_Fn_KIB_B] (
	[Tahun] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Kd_Ruang] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Tgl_Dokumen] datetime NULL,
	[No_Dokumen] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Merk] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CC] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Pabrik] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Rangka] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Mesin] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Polisi] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_BPKB] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tahun1] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_KA] tinyint NOT NULL,
	[Tgl_D2] datetime NOT NULL,
	[Tgl_Proses] datetime NOT NULL,
	CONSTRAINT [PK_Ta_Fn_KIB_B] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Fn_KIB_B] ON [dbo].[Ta_Fn_KIB_B] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Fn_KIB_C];
CREATE TABLE [dbo].[Ta_Fn_KIB_C] (
	[Tahun] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Bertingkat_Tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beton_tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Luas_Lantai] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lokasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dokumen_Tanggal] datetime NULL,
	[Dokumen_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status_Tanah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Tanah1] tinyint NULL,
	[Kd_Tanah2] tinyint NULL,
	[Kd_Tanah3] tinyint NULL,
	[Kd_Tanah4] tinyint NULL,
	[Kd_Tanah5] tinyint NULL,
	[Kode_Tanah] int NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Kd_KA] tinyint NOT NULL,
	[Tgl_D2] datetime NOT NULL,
	[Tgl_Proses] datetime NOT NULL,
	CONSTRAINT [PK_Ta_Fn_KIB_C] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Fn_KIB_C] ON [dbo].[Ta_Fn_KIB_C] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Fn_KIB_D];
CREATE TABLE [dbo].[Ta_Fn_KIB_D] (
	[Tahun] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Konstruksi] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Panjang] real NULL,
	[Lebar] real NULL,
	[Luas] real NULL,
	[Lokasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dokumen_Tanggal] datetime NULL,
	[Dokumen_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status_Tanah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Tanah1] tinyint NULL,
	[Kd_Tanah2] tinyint NULL,
	[Kd_Tanah3] tinyint NULL,
	[Kd_Tanah4] tinyint NULL,
	[Kd_Tanah5] tinyint NULL,
	[Kode_Tanah] int NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Kd_KA] tinyint NOT NULL,
	[Tgl_D2] datetime NOT NULL,
	[Tgl_Proses] datetime NOT NULL,
	CONSTRAINT [PK_Ta_Fn_KIB_D] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Fn_KIB_D] ON [dbo].[Ta_Fn_KIB_D] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Fn_KIB_E];
CREATE TABLE [dbo].[Ta_Fn_KIB_E] (
	[Tahun] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Kd_Ruang] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Tgl_Dokumen] datetime NULL,
	[No_Dokumen] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Judul] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pencipta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Kd_KA] tinyint NOT NULL,
	[Tgl_D2] datetime NOT NULL,
	[Tgl_Proses] datetime NOT NULL,
	CONSTRAINT [PK_Ta_Fn_KIB_E] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Fn_KIB_E] ON [dbo].[Ta_Fn_KIB_E] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Fn_KIB_F];
CREATE TABLE [dbo].[Ta_Fn_KIB_F] (
	[Tahun] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Bertingkat_Tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beton_Tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Luas_Lantai] float NULL,
	[Lokasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dokumen_Tanggal] datetime NULL,
	[Dokumen_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status_Tanah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Tanah1] tinyint NULL,
	[Kd_Tanah2] tinyint NULL,
	[Kd_Tanah3] tinyint NULL,
	[Kd_Tanah4] tinyint NULL,
	[Kd_Tanah5] tinyint NULL,
	[Kode_Tanah] int NULL,
	[Asal_Usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Kd_KA] tinyint NOT NULL,
	[Tgl_D2] datetime NOT NULL,
	[Tgl_Proses] datetime NOT NULL,
	CONSTRAINT [PK_Ta_Fn_KIB_F] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Fn_KIB_F] ON [dbo].[Ta_Fn_KIB_F] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Fn_KIB_L];
CREATE TABLE [dbo].[Ta_Fn_KIB_L] (
	[Tahun] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset] tinyint NOT NULL,
	[Kd_Aset0] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Kd_Ruang] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Tgl_Dokumen] datetime NULL,
	[No_Dokumen] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Judul] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pencipta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] real NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Kd_KA] tinyint NOT NULL,
	[Tgl_D2] datetime NOT NULL,
	[Tgl_Proses] datetime NOT NULL,
	CONSTRAINT [PK_Ta_Fn_KIB_L] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Fn_KIB_L] ON [dbo].[Ta_Fn_KIB_L] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_FotoA];
CREATE TABLE [dbo].[Ta_FotoA] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_Id] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] tinyint NOT NULL,
	[No_Register] int NOT NULL,
	[Foto_Aset] image NULL,
	[Nama_foto] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	CONSTRAINT [PK_Ta_FotoA] PRIMARY KEY ([IDPemda], [No_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_FotoA] ON [dbo].[Ta_FotoA] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_FotoB];
CREATE TABLE [dbo].[Ta_FotoB] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_Id] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] tinyint NOT NULL,
	[No_Register] int NOT NULL,
	[Foto_Aset] image NULL,
	[Nama_foto] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	CONSTRAINT [PK_Ta_FotoB] PRIMARY KEY ([IDPemda], [No_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_FotoB] ON [dbo].[Ta_FotoB] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_FotoC];
CREATE TABLE [dbo].[Ta_FotoC] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_Id] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] tinyint NOT NULL,
	[No_Register] int NOT NULL,
	[Foto_Aset] image NULL,
	[Nama_foto] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	CONSTRAINT [PK_Ta_FotoC] PRIMARY KEY ([IDPemda], [No_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_FotoC] ON [dbo].[Ta_FotoC] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_FotoD];
CREATE TABLE [dbo].[Ta_FotoD] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_Id] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] tinyint NOT NULL,
	[No_Register] int NOT NULL,
	[Foto_Aset] image NULL,
	[Nama_foto] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	CONSTRAINT [PK_Ta_FotoD] PRIMARY KEY ([IDPemda], [No_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_FotoD] ON [dbo].[Ta_FotoD] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_FotoE];
CREATE TABLE [dbo].[Ta_FotoE] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_Id] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] tinyint NOT NULL,
	[No_Register] int NOT NULL,
	[Foto_Aset] image NULL,
	[Nama_foto] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	CONSTRAINT [PK_Ta_FotoE] PRIMARY KEY ([IDPemda], [No_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_FotoE] ON [dbo].[Ta_FotoE] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KA];
CREATE TABLE [dbo].[Ta_KA] (
	[Tahun] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[MinSatuan] money NOT NULL DEFAULT '(0)',
	[MinTotal] money NOT NULL DEFAULT '(0)',
	[ThnPenyusutan] tinyint NOT NULL DEFAULT '(1)',
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_KA] bit NULL,
	[Kd_Aset8] tinyint NOT NULL,
	[Kd_Aset80] tinyint NOT NULL,
	[Kd_Aset81] tinyint NOT NULL,
	[Kd_Aset82] tinyint NOT NULL,
	[Kd_Aset83] tinyint NOT NULL
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KA] ON [dbo].[Ta_KA] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KA2];
CREATE TABLE [dbo].[Ta_KA2] (
	[Tahun] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	CONSTRAINT [PK_Ta_KA2] PRIMARY KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Aset1], [Kd_Aset2], [Kd_Aset3])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KA2] ON [dbo].[Ta_KA2] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Kegiatan];
CREATE TABLE [dbo].[Ta_Kegiatan] (
	[Tahun] smallint NOT NULL,
	[Kd_Urusan] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] tinyint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_Prog] smallint NOT NULL,
	[ID_Prog] smallint NOT NULL,
	[Kd_Keg] smallint NOT NULL,
	[Ket_Kegiatan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Lokasi] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kelompok_Sasaran] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status_Kegiatan] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL DEFAULT '(1)',
	[Pagu_Anggaran] money NULL,
	[Waktu_Pelaksanaan] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Sumber] tinyint NULL,
	CONSTRAINT [PK_Ta_Kegiatan] PRIMARY KEY ([Tahun], [Kd_Urusan], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_Prog], [ID_Prog], [Kd_Keg])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Kegiatan] ON [dbo].[Ta_Kegiatan] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIB_A];
CREATE TABLE [dbo].[Ta_KIB_A] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Luas_M2] float NULL,
	[Alamat] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Hak_Tanah] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Sertifikat_Tanggal] datetime NULL,
	[Sertifikat_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Penggunaan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_Masalah] tinyint NULL,
	[Ket_Masalah] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[No_SIPPT] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dev_Id] smallint NULL,
	[Kd_Hapus] bit NOT NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	[No_Reg8] int NULL,
	[Tg_Update8] datetime NULL,
	CONSTRAINT [PK_Ta_KIB_A] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIB_A] ON [dbo].[Ta_KIB_A] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIB_B];
CREATE TABLE [dbo].[Ta_KIB_B] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NULL,
	[Kd_Ruang] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Merk] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CC] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Nomor_Pabrik] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Rangka] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Mesin] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Polisi] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_BPKB] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_Masalah] tinyint NULL,
	[Ket_Masalah] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[No_SIPPT] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dev_Id] smallint NULL DEFAULT '(1)',
	[Kd_Hapus] bit NOT NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	[No_Reg8] int NULL,
	[Tg_Update8] datetime NULL,
	CONSTRAINT [PK_Ta_KIB_B] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIB_B] ON [dbo].[Ta_KIB_B] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIB_C];
CREATE TABLE [dbo].[Ta_KIB_C] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Bertingkat_Tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beton_tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Luas_Lantai] float NULL,
	[Lokasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dokumen_Tanggal] datetime NULL,
	[Dokumen_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status_Tanah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Tanah1] tinyint NULL,
	[Kd_Tanah2] tinyint NULL,
	[Kd_Tanah3] tinyint NULL,
	[Kd_Tanah4] tinyint NULL,
	[Kd_Tanah5] tinyint NULL,
	[Kode_Tanah] int NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_Masalah] tinyint NULL,
	[Ket_Masalah] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[No_SIPPT] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dev_Id] smallint NULL DEFAULT '(1)',
	[Kd_Hapus] bit NOT NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	[No_Reg8] int NULL,
	[Tg_Update8] datetime NULL,
	[Kd_Tanah8] tinyint NULL,
	[Kd_Tanah80] tinyint NULL,
	[Kd_Tanah81] tinyint NULL,
	[Kd_Tanah82] tinyint NULL,
	[Kd_Tanah83] tinyint NULL,
	[Kd_Tanah84] tinyint NULL,
	[Kd_Tanah85] int NULL,
	[Kd_Tanah] tinyint NULL,
	[Kd_Tanah0] tinyint NULL,
	CONSTRAINT [PK_Ta_KIB_C] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIB_C] ON [dbo].[Ta_KIB_C] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIB_D];
CREATE TABLE [dbo].[Ta_KIB_D] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Konstruksi] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Panjang] float NULL,
	[Lebar] float NULL,
	[Luas] float NULL,
	[Lokasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dokumen_Tanggal] datetime NULL,
	[Dokumen_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status_Tanah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Tanah1] tinyint NULL,
	[Kd_Tanah2] tinyint NULL,
	[Kd_Tanah3] tinyint NULL,
	[Kd_Tanah4] tinyint NULL,
	[Kd_Tanah5] tinyint NULL,
	[Kode_Tanah] int NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[No_SIPPT] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dev_Id] smallint NULL DEFAULT '(1)',
	[Kd_Hapus] bit NOT NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	[No_Reg8] int NULL,
	[Tg_Update8] datetime NULL,
	[Kd_Tanah] tinyint NULL,
	[Kd_Tanah0] tinyint NULL,
	CONSTRAINT [PK_Ta_KIB_D] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIB_D] ON [dbo].[Ta_KIB_D] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIB_E];
CREATE TABLE [dbo].[Ta_KIB_E] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NULL,
	[Kd_Ruang] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Judul] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pencipta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[No_SIPPT] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dev_Id] smallint NULL DEFAULT '(1)',
	[Kd_Hapus] bit NOT NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	[No_Reg8] int NULL,
	[Tg_Update8] datetime NULL,
	CONSTRAINT [PK_Ta_KIB_E] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIB_E] ON [dbo].[Ta_KIB_E] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIB_F];
CREATE TABLE [dbo].[Ta_KIB_F] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Bertingkat_Tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beton_tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Panjang] float NULL,
	[Lebar] float NULL,
	[Luas_Lantai] float NULL,
	[Lokasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dokumen_Tanggal] datetime NULL,
	[Dokumen_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status_Tanah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Tanah1] tinyint NULL,
	[Kd_Tanah2] tinyint NULL,
	[Kd_Tanah3] tinyint NULL,
	[Kd_Tanah4] tinyint NULL,
	[Kd_Tanah5] tinyint NULL,
	[Kode_Tanah] int NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[Kd_Hapus] bit NOT NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	[No_Reg8] int NULL,
	[Tg_Update8] datetime NULL,
	[Kd_Tanah] tinyint NULL,
	[Kd_Tanah0] tinyint NULL,
	CONSTRAINT [PK_Ta_KIB_F] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIB_F] ON [dbo].[Ta_KIB_F] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIB_Hps];
CREATE TABLE [dbo].[Ta_KIB_Hps] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDUser] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NULL,
	[Kd_Kab_Kota] tinyint NULL,
	[Kd_Bidang] tinyint NULL,
	[Kd_Unit] smallint NULL,
	[Kd_Sub] smallint NULL,
	[Kd_UPB] int NULL,
	[IDUrut] int NULL,
	[Kd_Hapus] bit NOT NULL,
	[Kd_Barang] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_Register] int NOT NULL,
	[Nm_Aset] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_KIB_Hps_Tmp] PRIMARY KEY ([IDPemda], [IDUser])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIB_Hps] ON [dbo].[Ta_KIB_Hps] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIBAHapus];
CREATE TABLE [dbo].[Ta_KIBAHapus] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_SK] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_SK] datetime NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Luas_M2] float NULL,
	[Alamat] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Hak_Tanah] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Sertifikat_Tanggal] datetime NULL,
	[Sertifikat_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Penggunaan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[Kd_Alasan] tinyint NULL,
	[Kd_Penyusutan] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Data] tinyint NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[No_BA] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Flag] bit NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KIBAHapus] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIBAHapus] ON [dbo].[Ta_KIBAHapus] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIBAR];
CREATE TABLE [dbo].[Ta_KIBAR] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Id] int NOT NULL,
	[No_Urut] int NOT NULL AS (([Kd_Id])),
	[Kd_Riwayat] tinyint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Dokumen] datetime NOT NULL,
	[No_Dokumen] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Luas_M2] float NULL,
	[Alamat] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Hak_Tanah] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Sertifikat_Tanggal] datetime NULL,
	[Sertifikat_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Penggunaan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Kd_Prov1] tinyint NULL,
	[Kd_Kab_Kota1] tinyint NULL,
	[Kd_Bidang1] tinyint NULL,
	[Kd_Unit1] smallint NULL,
	[Kd_Sub1] smallint NULL,
	[Kd_UPB1] smallint NULL,
	[No_Register1] int NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NULL DEFAULT '(1)',
	[Kd_Alasan] tinyint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Nm_Rekanan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Alamat_Reakanan] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Mulai] datetime NULL,
	[Tgl_Selesai] datetime NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[Kd_Koreksi] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KIBAR] PRIMARY KEY ([IDPemda], [Kd_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIBAR] ON [dbo].[Ta_KIBAR] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIBBHapus];
CREATE TABLE [dbo].[Ta_KIBBHapus] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_SK] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_SK] datetime NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Ruang] int NULL,
	[Kd_Pemilik] tinyint NULL,
	[Merk] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CC] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Nomor_Pabrik] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Rangka] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Mesin] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Polisi] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_BPKB] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[Kd_Alasan] tinyint NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[No_BA] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Flag] bit NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KIBBHapus] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIBBHapus] ON [dbo].[Ta_KIBBHapus] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIBBR];
CREATE TABLE [dbo].[Ta_KIBBR] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Id] int NOT NULL,
	[No_Urut] int NOT NULL AS (([Kd_Id])),
	[Kd_Riwayat] tinyint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Ruang] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Dokumen] datetime NOT NULL,
	[No_Dokumen] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Merk] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CC] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Pabrik] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Rangka] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Mesin] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Polisi] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_BPKB] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Kd_Prov1] tinyint NULL,
	[Kd_Kab_Kota1] tinyint NULL,
	[Kd_Bidang1] tinyint NULL,
	[Kd_Unit1] smallint NULL,
	[Kd_Sub1] smallint NULL,
	[Kd_UPB1] smallint NULL,
	[No_Register1] int NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL DEFAULT '(1)',
	[Kd_Alasan] tinyint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Nm_Rekanan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Alamat_Reakanan] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Mulai] datetime NULL,
	[Tgl_Selesai] datetime NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[Kd_Koreksi] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dev_ID] smallint NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KIBBR] PRIMARY KEY ([IDPemda], [Kd_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIBBR] ON [dbo].[Ta_KIBBR] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIBCHapus];
CREATE TABLE [dbo].[Ta_KIBCHapus] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_SK] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_SK] datetime NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Bertingkat_Tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beton_tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Luas_Lantai] float NULL,
	[Lokasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dokumen_Tanggal] datetime NULL,
	[Dokumen_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status_Tanah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Tanah1] tinyint NULL,
	[Kd_Tanah2] tinyint NULL,
	[Kd_Tanah3] tinyint NULL,
	[Kd_Tanah4] tinyint NULL,
	[Kd_Tanah5] tinyint NULL,
	[Kode_Tanah] int NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[Kd_Alasan] tinyint NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[No_BA] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Flag] bit NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KIBCHapus] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIBCHapus] ON [dbo].[Ta_KIBCHapus] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIBCR];
CREATE TABLE [dbo].[Ta_KIBCR] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Id] int NOT NULL,
	[No_Urut] int NOT NULL AS (([Kd_Id])),
	[Kd_Riwayat] tinyint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Dokumen] datetime NOT NULL,
	[No_Dokumen] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_Perolehan] datetime NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Bertingkat_Tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beton_tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Luas_Lantai] float NULL,
	[Lokasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dokumen_Tanggal] datetime NULL,
	[Dokumen_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status_Tanah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Tanah1] tinyint NULL,
	[Kd_Tanah2] tinyint NULL,
	[Kd_Tanah3] tinyint NULL,
	[Kd_Tanah4] tinyint NULL,
	[Kd_Tanah5] tinyint NULL,
	[Kode_Tanah] int NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Kd_Prov1] tinyint NULL,
	[Kd_Kab_Kota1] tinyint NULL,
	[Kd_Bidang1] tinyint NULL,
	[Kd_Unit1] smallint NULL,
	[Kd_Sub1] smallint NULL,
	[Kd_UPB1] smallint NULL,
	[No_Register1] int NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL DEFAULT '(1)',
	[Kd_Alasan] tinyint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Nm_Rekanan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Alamat_Reakanan] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Mulai] datetime NULL,
	[Tgl_Selesai] datetime NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[Kd_Koreksi] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dev_ID] smallint NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KIBCR] PRIMARY KEY ([IDPemda], [Kd_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIBCR] ON [dbo].[Ta_KIBCR] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIBDHapus];
CREATE TABLE [dbo].[Ta_KIBDHapus] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_SK] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_SK] datetime NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Konstruksi] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Panjang] float NULL,
	[Lebar] float NULL,
	[Luas] float NULL,
	[Lokasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dokumen_Tanggal] datetime NULL,
	[Dokumen_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status_Tanah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Tanah1] tinyint NULL,
	[Kd_Tanah2] tinyint NULL,
	[Kd_Tanah3] tinyint NULL,
	[Kd_Tanah4] tinyint NULL,
	[Kd_Tanah5] tinyint NULL,
	[Kode_Tanah] int NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[Kd_Alasan] tinyint NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[No_BA] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Flag] bit NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KIBDHapus] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIBDHapus] ON [dbo].[Ta_KIBDHapus] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIBDR];
CREATE TABLE [dbo].[Ta_KIBDR] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Id] int NOT NULL,
	[No_Urut] int NOT NULL AS (([Kd_Id])),
	[Kd_Riwayat] tinyint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Dokumen] datetime NOT NULL,
	[No_Dokumen] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Konstruksi] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Panjang] float NULL,
	[Lebar] float NULL,
	[Luas] float NULL,
	[Lokasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dokumen_Tanggal] datetime NULL,
	[Dokumen_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status_Tanah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Tanah1] tinyint NULL,
	[Kd_Tanah2] tinyint NULL,
	[Kd_Tanah3] tinyint NULL,
	[Kd_Tanah4] tinyint NULL,
	[Kd_Tanah5] tinyint NULL,
	[Kode_Tanah] int NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Kd_Prov1] tinyint NULL,
	[Kd_Kab_Kota1] tinyint NULL,
	[Kd_Bidang1] tinyint NULL,
	[Kd_Unit1] smallint NULL,
	[Kd_Sub1] smallint NULL,
	[Kd_UPB1] smallint NULL,
	[No_Register1] int NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL DEFAULT '(1)',
	[Kd_Alasan] tinyint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Nm_Rekanan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Alamat_Reakanan] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Mulai] datetime NULL,
	[Tgl_Selesai] datetime NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[Kd_Koreksi] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dev_ID] smallint NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KIBDR] PRIMARY KEY ([IDPemda], [Kd_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIBDR] ON [dbo].[Ta_KIBDR] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIBEHapus];
CREATE TABLE [dbo].[Ta_KIBEHapus] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_SK] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_SK] datetime NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Ruang] int NULL,
	[Kd_Pemilik] tinyint NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Judul] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pencipta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] float NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[Kd_Alasan] tinyint NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[No_BA] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Flag] bit NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KIBEHapus] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIBEHapus] ON [dbo].[Ta_KIBEHapus] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KIBER];
CREATE TABLE [dbo].[Ta_KIBER] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Id] int NOT NULL,
	[No_Urut] int NOT NULL AS (([Kd_Id])),
	[Kd_Riwayat] tinyint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Ruang] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Dokumen] datetime NOT NULL,
	[No_Dokumen] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Judul] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pencipta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] float NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Kd_Prov1] tinyint NULL,
	[Kd_Kab_Kota1] tinyint NULL,
	[Kd_Bidang1] tinyint NULL,
	[Kd_Unit1] smallint NULL,
	[Kd_Sub1] smallint NULL,
	[Kd_UPB1] smallint NULL,
	[No_Register1] int NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL DEFAULT '(1)',
	[Kd_Alasan] tinyint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Nm_Rekanan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Alamat_Reakanan] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Mulai] datetime NULL,
	[Tgl_Selesai] datetime NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[Kd_Koreksi] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dev_ID] smallint NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KIBER] PRIMARY KEY ([IDPemda], [Kd_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KIBER] ON [dbo].[Ta_KIBER] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KILER];
CREATE TABLE [dbo].[Ta_KILER] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Id] int NOT NULL,
	[No_Urut] int NOT NULL AS (([Kd_Id])),
	[Kd_Riwayat] tinyint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Ruang] int NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Dokumen] datetime NOT NULL,
	[No_Dokumen] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Judul] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pencipta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] float NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Kd_Prov1] tinyint NULL,
	[Kd_Kab_Kota1] tinyint NULL,
	[Kd_Bidang1] tinyint NULL,
	[Kd_Unit1] smallint NULL,
	[Kd_Sub1] smallint NULL,
	[Kd_UPB1] smallint NULL,
	[No_Register1] int NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL DEFAULT '(1)',
	[Kd_Alasan] tinyint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Nm_Rekanan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Alamat_Reakanan] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Mulai] datetime NULL,
	[Tgl_Selesai] datetime NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[Dev_ID] smallint NULL DEFAULT '(1)',
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KILER] PRIMARY KEY ([IDPemda], [Kd_Id])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KILER] ON [dbo].[Ta_KILER] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_KILHapus];
CREATE TABLE [dbo].[Ta_KILHapus] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_SK] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_SK] datetime NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Ruang] int NULL,
	[Kd_Pemilik] tinyint NULL,
	[Tgl_Perolehan] datetime NULL,
	[Tgl_Pembukuan] datetime NULL,
	[Judul] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pencipta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] float NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Harga] money NULL,
	[Masa_Manfaat] smallint NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[Kd_Alasan] tinyint NULL,
	[Kd_Penyusutan] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_KA] bit NULL DEFAULT '(1)',
	[Kd_Data] tinyint NULL,
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_KILHapus] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_KILHapus] ON [dbo].[Ta_KILHapus] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Kontrak_Addendum];
CREATE TABLE [dbo].[Ta_Kontrak_Addendum] (
	[Tahun] smallint NOT NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_Addendum] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_Addendum] datetime NULL,
	[Keperluan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Waktu] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nilai] money NULL,
	CONSTRAINT [PK_Ta_Kontrak_Addendum] PRIMARY KEY ([Tahun], [No_Kontrak], [No_Addendum])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Kontrak_Addendum] ON [dbo].[Ta_Kontrak_Addendum] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Lainnya];
CREATE TABLE [dbo].[Ta_Lainnya] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NULL,
	[Kd_Ruang] tinyint NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Judul] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pencipta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[Umur] tinyint NULL,
	[Dev_ID] smallint NULL DEFAULT '(1)',
	[Kd_Hapus] bit NULL DEFAULT '(0)',
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	[No_Reg8] int NULL,
	[Tg_Update8] datetime NULL,
	CONSTRAINT [PK_Ta_Lainnya] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Lainnya] ON [dbo].[Ta_Lainnya] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_LainnyaHapus];
CREATE TABLE [dbo].[Ta_LainnyaHapus] (
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_SK] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_SK] datetime NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Ruang] tinyint NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Judul] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pencipta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Masa_Manfaat] smallint NOT NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tahun] smallint NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Tgl_Pembukuan] datetime NOT NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Invent] tinyint NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Alasan] tinyint NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NOT NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_KA] bit NOT NULL DEFAULT '(1)',
	[Umur] tinyint NULL,
	[Dev_Id] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL DEFAULT '(1)',
	[IDData] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_LainnyaHapus] PRIMARY KEY ([IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_LainnyaHapus] ON [dbo].[Ta_LainnyaHapus] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Manfaat];
CREATE TABLE [dbo].[Ta_Manfaat] (
	[No_MOU] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_MOURek] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_MOU] datetime NOT NULL,
	[Kd_Riwayat] tinyint NOT NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_Manfaat] PRIMARY KEY ([No_MOU], [Kd_Riwayat])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Manfaat] ON [dbo].[Ta_Manfaat] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_P3D];
CREATE TABLE [dbo].[Ta_P3D] (
	[No_BAST] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tanggal] datetime NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Nm_Kab_Kota] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT [PK_P3D] PRIMARY KEY ([No_BAST])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_P3D] ON [dbo].[Ta_P3D] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_P3D_Rinc];
CREATE TABLE [dbo].[Ta_P3D_Rinc] (
	[No_BAST] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	CONSTRAINT [PK_Ta_P3D_Rinc] PRIMARY KEY ([No_BAST], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_P3D_Rinc] ON [dbo].[Ta_P3D_Rinc] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Pemda];
CREATE TABLE [dbo].[Ta_Pemda] (
	[Tahun] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Nm_PimpDaerah] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Jab_PimpDaerah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nm_Sekda] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nip_Sekda] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Jbt_Sekda] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nm_Ka_Umum] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nip_Ka_Umum] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Jbt_Ka_Umum] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nm_Ka_Keu] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nip_Ka_Keu] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Jbt_Ka_Keu] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_Pemda] PRIMARY KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Pemda] ON [dbo].[Ta_Pemda] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Pemeliharaan];
CREATE TABLE [dbo].[Ta_Pemeliharaan] (
	[Tahun] smallint NOT NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NULL,
	[Kd_Kab_Kota] tinyint NULL,
	[Kd_Bidang] tinyint NULL,
	[Kd_Unit] smallint NULL,
	[Kd_Sub] smallint NULL,
	[Kd_UPB] int NULL,
	[Tgl_SP2D] datetime NULL,
	[Nm_Pemelihara] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Pemeliharaan] datetime NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Kontrak] datetime NULL,
	[Nm_Rekanan] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_Pemeliharaan] PRIMARY KEY ([Tahun], [No_SP2D]),
	CONSTRAINT [IX_Ta_Pemeliharaan] UNIQUE ([Tahun], [No_SP2D], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Pemeliharaan] ON [dbo].[Ta_Pemeliharaan] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Pemeliharaan_Rinc];
CREATE TABLE [dbo].[Ta_Pemeliharaan_Rinc] (
	[Tahun] smallint NOT NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] tinyint NOT NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Jns_Pemeliharaan] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Biaya] money NOT NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_Pemeliharaan_Rinc] PRIMARY KEY ([Tahun], [No_SP2D], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB], [Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5], [No_Register])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Pemeliharaan_Rinc] ON [dbo].[Ta_Pemeliharaan_Rinc] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_PenA];
CREATE TABLE [dbo].[Ta_PenA] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Harga] money NOT NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Kontrak] datetime NULL,
	[Tgl_Perolehan] datetime NULL,
	[Tgl_Pembukuan] datetime NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_Aset8] tinyint NOT NULL,
	[Kd_Aset80] tinyint NOT NULL,
	[Kd_Aset81] tinyint NOT NULL,
	[Kd_Aset82] tinyint NOT NULL,
	[Kd_Aset83] tinyint NOT NULL,
	[Kd_Aset84] tinyint NOT NULL,
	[Kd_Aset85] int NOT NULL,
	[No_Reg8] int NULL,
	CONSTRAINT [PK_Ta_PenA] PRIMARY KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB], [Kd_Aset4], [Kd_Aset5], [No_Register], [Kd_Aset8], [Kd_Aset80], [Kd_Aset81], [Kd_Aset82], [Kd_Aset83], [Kd_Aset84], [Kd_Aset85])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_PenA] ON [dbo].[Ta_PenA] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_PenB];
CREATE TABLE [dbo].[Ta_PenB] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Harga] money NOT NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Kontrak] datetime NULL,
	[Tgl_Perolehan] datetime NULL,
	[Tgl_Pembukuan] datetime NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_Aset8] tinyint NOT NULL,
	[Kd_Aset80] tinyint NOT NULL,
	[Kd_Aset81] tinyint NOT NULL,
	[Kd_Aset82] tinyint NOT NULL,
	[Kd_Aset83] tinyint NOT NULL,
	[Kd_Aset84] tinyint NOT NULL,
	[Kd_Aset85] int NOT NULL,
	[No_Reg8] int NULL,
	CONSTRAINT [PK_Ta_PenB] PRIMARY KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB], [Kd_Aset4], [Kd_Aset5], [No_Register], [Kd_Aset8], [Kd_Aset80], [Kd_Aset81], [Kd_Aset82], [Kd_Aset83], [Kd_Aset84], [Kd_Aset85])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_PenB] ON [dbo].[Ta_PenB] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_PenC];
CREATE TABLE [dbo].[Ta_PenC] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Harga] money NOT NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Kontrak] datetime NULL,
	[Tgl_Perolehan] datetime NULL,
	[Tgl_Pembukuan] datetime NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_Aset8] tinyint NOT NULL,
	[Kd_Aset80] tinyint NOT NULL,
	[Kd_Aset81] tinyint NOT NULL,
	[Kd_Aset82] tinyint NOT NULL,
	[Kd_Aset83] tinyint NOT NULL,
	[Kd_Aset84] tinyint NOT NULL,
	[Kd_Aset85] int NOT NULL,
	[No_Reg8] int NULL,
	CONSTRAINT [PK_Ta_PenC] PRIMARY KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB], [Kd_Aset4], [Kd_Aset5], [No_Register], [Kd_Aset8], [Kd_Aset80], [Kd_Aset81], [Kd_Aset82], [Kd_Aset83], [Kd_Aset84], [Kd_Aset85])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_PenC] ON [dbo].[Ta_PenC] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_PenD];
CREATE TABLE [dbo].[Ta_PenD] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Harga] money NOT NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Kontrak] datetime NULL,
	[Tgl_Perolehan] datetime NULL,
	[Tgl_Pembukuan] datetime NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_Aset8] tinyint NOT NULL,
	[Kd_Aset80] tinyint NOT NULL,
	[Kd_Aset81] tinyint NOT NULL,
	[Kd_Aset82] tinyint NOT NULL,
	[Kd_Aset83] tinyint NOT NULL,
	[Kd_Aset84] tinyint NOT NULL,
	[Kd_Aset85] int NOT NULL,
	[No_Reg8] int NULL,
	CONSTRAINT [PK_Ta_PenD] PRIMARY KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB], [Kd_Aset4], [Kd_Aset5], [No_Register], [Kd_Aset8], [Kd_Aset80], [Kd_Aset81], [Kd_Aset82], [Kd_Aset83], [Kd_Aset84], [Kd_Aset85])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_PenD] ON [dbo].[Ta_PenD] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_PenE];
CREATE TABLE [dbo].[Ta_PenE] (
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] int NOT NULL,
	[No_Register] int NOT NULL,
	[Harga] money NOT NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tgl_Kontrak] datetime NULL,
	[Tgl_Perolehan] datetime NULL,
	[Tgl_Pembukuan] datetime NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_Aset8] tinyint NOT NULL,
	[Kd_Aset80] tinyint NOT NULL,
	[Kd_Aset81] tinyint NOT NULL,
	[Kd_Aset82] tinyint NOT NULL,
	[Kd_Aset83] tinyint NOT NULL,
	[Kd_Aset84] tinyint NOT NULL,
	[Kd_Aset85] int NOT NULL,
	[No_Reg8] int NULL,
	CONSTRAINT [PK_Ta_PenE] PRIMARY KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB], [Kd_Aset4], [Kd_Aset5], [No_Register], [Kd_Aset8], [Kd_Aset80], [Kd_Aset81], [Kd_Aset82], [Kd_Aset83], [Kd_Aset84], [Kd_Aset85])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_PenE] ON [dbo].[Ta_PenE] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Pengadaan];
CREATE TABLE [dbo].[Ta_Pengadaan] (
	[Tahun] smallint NOT NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Tgl_Kontrak] datetime NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Waktu] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nilai] money NULL,
	[Nm_Perusahaan] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bentuk] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Alamat] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nm_Pemilik] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NPWP] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nm_Bank] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nm_Rekening] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_Rekening] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Urusan] tinyint NULL,
	[Kd_Bidang1] tinyint NULL,
	[Kd_Unit1] tinyint NULL,
	[Kd_Sub1] smallint NULL,
	[Kd_Prog] smallint NULL,
	[ID_Prog] smallint NULL,
	[Kd_Keg] smallint NULL,
	[Kd_Posting] tinyint NULL,
	CONSTRAINT [PK_Ta_Pengadaan] PRIMARY KEY ([Tahun], [No_Kontrak])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Pengadaan] ON [dbo].[Ta_Pengadaan] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Pengadaan_Bast];
CREATE TABLE [dbo].[Ta_Pengadaan_Bast] (
	[Tahun] smallint NOT NULL,
	[No_BAST] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_BAST] datetime NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Uraian] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_Pengadaan_Bast] PRIMARY KEY ([Tahun], [No_BAST])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Pengadaan_Bast] ON [dbo].[Ta_Pengadaan_Bast] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Pengadaan_Bast_Rinc];
CREATE TABLE [dbo].[Ta_Pengadaan_Bast_Rinc] (
	[Tahun] smallint NOT NULL,
	[No_BAST] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NULL,
	[Kd_Ruang] int NULL,
	[Tgl_Perolehan] datetime NULL,
	[Tgl_Pembukuan] datetime NULL,
	[Judul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CC] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Pabrik] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Rangka] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Mesin] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Polisi] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_BPKB] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Luas_Lantai] float NULL,
	[Panjang] float NULL,
	[Lebar] float NULL,
	[Lokasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dokumen_Tanggal] datetime NULL,
	[Dokumen_Nomor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Hak_Tanah] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Penggunaan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Konstruksi] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bertingkat_Tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beton_Tidak] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pencipta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Asal_Usul] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kondisi] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Harga] money NULL,
	[Masa_Manfaat] smallint NULL,
	[Nilai_Sisa] money NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_ID] smallint NULL,
	[Invent] tinyint NULL,
	[Kd_Penyusutan] tinyint NULL,
	[Kd_Data] tinyint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	[Kd_KA] bit NULL,
	[Kd_Hapus] bit NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	[Tg_Update8] datetime NULL,
	[No_Reg8] int NULL
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Pengadaan_Bast_Rinc] ON [dbo].[Ta_Pengadaan_Bast_Rinc] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Pengadaan_Rinc];
CREATE TABLE [dbo].[Ta_Pengadaan_Rinc] (
	[Tahun] smallint NOT NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_ID] smallint NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[Merk] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Jumlah] money NOT NULL,
	[Harga] money NOT NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bahan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CC] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Pabrik] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Rangka] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Mesin] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_Polisi] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nomor_BPKB] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Panjang] float NULL,
	[Lebar] float NULL,
	[Luas] float NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	[Tg_Update8] datetime NULL,
	CONSTRAINT [PK_Ta_Pengadaan_Rinc] PRIMARY KEY ([Tahun], [No_Kontrak], [No_ID])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Pengadaan_Rinc] ON [dbo].[Ta_Pengadaan_Rinc] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Pengadaan_SP2D];
CREATE TABLE [dbo].[Ta_Pengadaan_SP2D] (
	[Tahun] smallint NOT NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Jn_SP2D] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_SP2D] datetime NOT NULL,
	[Nilai] money NOT NULL DEFAULT '(0)',
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Ambil] smallint NULL,
	CONSTRAINT [PK_Ta_Pengadaan_SP2D] PRIMARY KEY ([Tahun], [No_Kontrak], [No_SP2D], [Jn_SP2D])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Pengadaan_SP2D] ON [dbo].[Ta_Pengadaan_SP2D] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Pengadaan_SP2D_Rinc];
CREATE TABLE [dbo].[Ta_Pengadaan_SP2D_Rinc] (
	[Tahun] smallint NOT NULL,
	[No_Kontrak] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_SP2D] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Jn_SP2D] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_ID] smallint NOT NULL,
	[Kd_Rek_1] tinyint NOT NULL,
	[Kd_Rek_2] tinyint NOT NULL,
	[Kd_Rek_3] tinyint NOT NULL,
	[Kd_Rek_4] tinyint NOT NULL,
	[Kd_Rek_5] tinyint NOT NULL,
	[Nilai] money NOT NULL,
	CONSTRAINT [PK_Ta_Pengadaan_SP2D_Rinc] PRIMARY KEY ([Tahun], [No_Kontrak], [No_SP2D], [Jn_SP2D], [No_ID])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Pengadaan_SP2D_Rinc] ON [dbo].[Ta_Pengadaan_SP2D_Rinc] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Penggunaan];
CREATE TABLE [dbo].[Ta_Penggunaan] (
	[Tahun] smallint NOT NULL,
	[No_SKGuna] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_SKGuna] datetime NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_Penggunaan] PRIMARY KEY ([Tahun], [No_SKGuna])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Penggunaan] ON [dbo].[Ta_Penggunaan] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Penghapusan];
CREATE TABLE [dbo].[Ta_Penghapusan] (
	[Tahun] smallint NOT NULL,
	[No_SK] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_SK] datetime NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Hapus] tinyint NULL,
	CONSTRAINT [PK_Ta_Penghapusan] PRIMARY KEY ([Tahun], [No_SK])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Penghapusan] ON [dbo].[Ta_Penghapusan] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Penghapusan_Rinc];
CREATE TABLE [dbo].[Ta_Penghapusan_Rinc] (
	[Tahun] smallint NOT NULL,
	[No_SK] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[No_ID] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Aset1] tinyint NOT NULL,
	[Kd_Aset2] tinyint NOT NULL,
	[Kd_Aset3] tinyint NOT NULL,
	[Kd_Aset4] tinyint NOT NULL,
	[Kd_Aset5] tinyint NOT NULL,
	[No_Register] int NOT NULL,
	[Kd_Pemilik] tinyint NOT NULL,
	[Tgl_Perolehan] datetime NOT NULL,
	[Kondisi] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Alasan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Alasan] tinyint NULL,
	[Harga] money NULL,
	CONSTRAINT [PK_Ta_Penghapusan_Rinc] PRIMARY KEY ([Tahun], [No_SK], [No_ID])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Penghapusan_Rinc] ON [dbo].[Ta_Penghapusan_Rinc] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Pindahtangan];
CREATE TABLE [dbo].[Ta_Pindahtangan] (
	[Tahun] smallint NOT NULL,
	[No_BA] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_BA] datetime NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Musnah] tinyint NULL
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Pindahtangan] ON [dbo].[Ta_Pindahtangan] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Program];
CREATE TABLE [dbo].[Ta_Program] (
	[Tahun] smallint NOT NULL,
	[Kd_Urusan] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] tinyint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_Prog] smallint NOT NULL,
	[ID_Prog] smallint NOT NULL,
	[Ket_Program] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tolak_Ukur] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Target_Angka] money NULL,
	[Target_Uraian] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Urusan1] tinyint NOT NULL,
	[Kd_Bidang1] tinyint NOT NULL,
	CONSTRAINT [PK_Ta_Program] PRIMARY KEY ([Tahun], [Kd_Urusan], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_Prog], [ID_Prog]),
	CONSTRAINT [IX_Ta_Program] UNIQUE ([Tahun], [Kd_Urusan], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_Urusan1], [Kd_Bidang1], [Kd_Prog])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Program] ON [dbo].[Ta_Program] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_RKBU];
CREATE TABLE [dbo].[Ta_RKBU] (
	[Tahun] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[No_ID] smallint NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[Merk] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ukuran] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Jumlah] money NOT NULL,
	[Harga] money NOT NULL,
	[Kd_Rek_1] tinyint NOT NULL,
	[Kd_Rek_2] tinyint NOT NULL,
	[Kd_Rek_3] tinyint NOT NULL,
	[Kd_Rek_4] tinyint NOT NULL,
	[Kd_Rek_5] tinyint NOT NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_RKBU] PRIMARY KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB], [No_ID])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_RKBU] ON [dbo].[Ta_RKBU] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_RKPBU];
CREATE TABLE [dbo].[Ta_RKPBU] (
	[Tahun] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[No_ID] smallint NOT NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[Uraian] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lokasi] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Jumlah] money NULL,
	[Harga] money NULL,
	[Kd_Rek_1] tinyint NULL,
	[Kd_Rek_2] tinyint NULL,
	[Kd_Rek_3] tinyint NULL,
	[Kd_Rek_4] tinyint NULL,
	[Kd_Rek_5] tinyint NULL,
	[Keterangan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Aset8] tinyint NULL,
	[Kd_Aset80] tinyint NULL,
	[Kd_Aset81] tinyint NULL,
	[Kd_Aset82] tinyint NULL,
	[Kd_Aset83] tinyint NULL,
	[Kd_Aset84] tinyint NULL,
	[Kd_Aset85] int NULL,
	CONSTRAINT [PK_Ta_RKPBU] PRIMARY KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB], [No_ID])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_RKPBU] ON [dbo].[Ta_RKPBU] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Ruang];
CREATE TABLE [dbo].[Ta_Ruang] (
	[Tahun] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Kd_UPB] int NOT NULL,
	[Kd_Ruang] int NOT NULL,
	[Nm_Ruang] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Nm_Pngjwb] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nip_Pngjwb] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Jbt_Pngjwb] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Bidang1] tinyint NULL,
	[Kd_Unit1] smallint NULL,
	[Kd_Sub1] smallint NULL,
	[Kd_UPB1] int NULL,
	[Kd_Aset1] tinyint NULL,
	[Kd_Aset2] tinyint NULL,
	[Kd_Aset3] tinyint NULL,
	[Kd_Aset4] tinyint NULL,
	[Kd_Aset5] tinyint NULL,
	[No_Register] int NULL,
	[Kd_Pemilik] tinyint NULL,
	CONSTRAINT [PK_Ta_Ruang] PRIMARY KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB], [Kd_Ruang])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Ruang] ON [dbo].[Ta_Ruang] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_SIPPT];
CREATE TABLE [dbo].[Ta_SIPPT] (
	[Dev_Id] smallint NOT NULL,
	[No_SIPPT] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tgl_SIPPT] datetime NOT NULL,
	[Luas_SIPPT] float NOT NULL,
	[Lokasi] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Keterangan] varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kd_Prov] tinyint NULL,
	[Kd_Kab_Kota] tinyint NULL,
	[Kd_Kecamatan] smallint NULL,
	[Kd_Desa] smallint NULL,
	[Log_User] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Log_entry] datetime NULL,
	CONSTRAINT [PK_Ta_SIPPT] PRIMARY KEY ([Dev_Id], [No_SIPPT])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_SIPPT] ON [dbo].[Ta_SIPPT] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Sub_Unit];
CREATE TABLE [dbo].[Ta_Sub_Unit] (
	[Tahun] smallint NOT NULL,
	[Kd_Prov] tinyint NOT NULL,
	[Kd_Kab_Kota] tinyint NOT NULL,
	[Kd_Bidang] tinyint NOT NULL,
	[Kd_Unit] smallint NOT NULL,
	[Kd_Sub] smallint NOT NULL,
	[Alamat] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_Sub_Unit] PRIMARY KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Sub_Unit] ON [dbo].[Ta_Sub_Unit] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_Susut_Ekspor];
CREATE TABLE [dbo].[Ta_Susut_Ekspor] (
	[Tahun] smallint NOT NULL,
	[Kd_UrusanS] tinyint NOT NULL,
	[Kd_BidangS] tinyint NOT NULL,
	[Kd_UnitS] tinyint NOT NULL,
	[Kd_SubS] smallint NOT NULL,
	[Kd_Rek_1] tinyint NOT NULL,
	[Kd_Rek_2] tinyint NOT NULL,
	[Kd_Rek_3] tinyint NOT NULL,
	[Kd_Rek_4] tinyint NOT NULL,
	[Nilai_Susut1] money NULL,
	[Nilai_Susut2] money NULL,
	CONSTRAINT [PK_Ta_Susut_Ekspor] PRIMARY KEY ([Tahun], [Kd_UrusanS], [Kd_BidangS], [Kd_UnitS], [Kd_SubS], [Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3], [Kd_Rek_4])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_Susut_Ekspor] ON [dbo].[Ta_Susut_Ekspor] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_SusutB];
CREATE TABLE [dbo].[Ta_SusutB] (
	[Tahun] smallint NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Nilai_Susut1] money NULL,
	[Nilai_Susut2] money NULL,
	[Akum_Susut] money NULL,
	[Nilai_Sisa] money NULL,
	[Sisa_Umur] smallint NULL,
	[Jndt] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kawal] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_SusutB] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_SusutB] ON [dbo].[Ta_SusutB] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_SusutBL];
CREATE TABLE [dbo].[Ta_SusutBL] (
	[Tahun] smallint NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Nilai_Susut1] money NULL,
	[Nilai_Susut2] money NULL,
	[Akum_Susut] money NULL,
	[Nilai_Sisa] money NULL,
	[Sisa_Umur] smallint NULL,
	[Jndt] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kawal] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_SusutBL] PRIMARY KEY ([Tahun], [IDPemda])
);


DROP TABLE IF EXISTS [dbo].[Ta_SusutC];
CREATE TABLE [dbo].[Ta_SusutC] (
	[Tahun] smallint NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Nilai_Susut1] money NULL,
	[Nilai_Susut2] money NULL,
	[Akum_Susut] money NULL,
	[Nilai_Sisa] money NULL,
	[Sisa_Umur] smallint NULL,
	[Jndt] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kawal] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_SusutC] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_SusutC] ON [dbo].[Ta_SusutC] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_SusutCL];
CREATE TABLE [dbo].[Ta_SusutCL] (
	[Tahun] smallint NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Nilai_Susut1] money NULL,
	[Nilai_Susut2] money NULL,
	[Akum_Susut] money NULL,
	[Nilai_Sisa] money NULL,
	[Sisa_Umur] smallint NULL,
	[Jndt] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kawal] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_SusutCL] PRIMARY KEY ([Tahun], [IDPemda])
);


DROP TABLE IF EXISTS [dbo].[Ta_SusutD];
CREATE TABLE [dbo].[Ta_SusutD] (
	[Tahun] smallint NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Nilai_Susut1] money NULL,
	[Nilai_Susut2] money NULL,
	[Akum_Susut] money NULL,
	[Nilai_Sisa] money NULL,
	[Sisa_Umur] smallint NULL,
	[Jndt] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kawal] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_SusutD] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_SusutD] ON [dbo].[Ta_SusutD] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_SusutDL];
CREATE TABLE [dbo].[Ta_SusutDL] (
	[Tahun] smallint NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Nilai_Susut1] money NULL,
	[Nilai_Susut2] money NULL,
	[Akum_Susut] money NULL,
	[Nilai_Sisa] money NULL,
	[Sisa_Umur] smallint NULL,
	[Jndt] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kawal] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_SusutDL] PRIMARY KEY ([Tahun], [IDPemda])
);


DROP TABLE IF EXISTS [dbo].[Ta_SusutE];
CREATE TABLE [dbo].[Ta_SusutE] (
	[Tahun] smallint NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Nilai_Susut1] money NULL,
	[Nilai_Susut2] money NULL,
	[Akum_Susut] money NULL,
	[Nilai_Sisa] money NULL,
	[Sisa_Umur] smallint NULL,
	[Jndt] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kawal] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_SusutE] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_SusutE] ON [dbo].[Ta_SusutE] AFTER INSERT 
;;
DELIMITER ;

DROP TABLE IF EXISTS [dbo].[Ta_SusutEL];
CREATE TABLE [dbo].[Ta_SusutEL] (
	[Tahun] smallint NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Nilai_Susut1] money NULL,
	[Nilai_Susut2] money NULL,
	[Akum_Susut] money NULL,
	[Nilai_Sisa] money NULL,
	[Sisa_Umur] smallint NULL,
	[Jndt] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kawal] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_SusutEL] PRIMARY KEY ([Tahun], [IDPemda])
);


DROP TABLE IF EXISTS [dbo].[Ta_SusutL];
CREATE TABLE [dbo].[Ta_SusutL] (
	[Tahun] smallint NOT NULL,
	[IDPemda] varchar(17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Harga] money NOT NULL,
	[Nilai_Susut1] money NULL,
	[Nilai_Susut2] money NULL,
	[Akum_Susut] money NULL,
	[Nilai_Sisa] money NULL,
	[Sisa_Umur] smallint NULL,
	[Jndt] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Kawal] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ta_SusutL] PRIMARY KEY ([Tahun], [IDPemda])
);


DELIMITER ;;
CREATE TRIGGER [trgCekTa_SusutL] ON [dbo].[Ta_SusutL] AFTER INSERT 
;;
DELIMITER ;

ALTER TABLE [dbo].[Ref_Desa] ADD
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Kecamatan]) REFERENCES [Ref_Kecamatan] ([Kd_Prov], [Kd_Kab_Kota], [Kd_Kecamatan]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Kab_Kota] ADD
	FOREIGN KEY ([Kd_Prov]) REFERENCES [Ref_Provinsi] ([Kd_Prov]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Kecamatan] ADD
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ref_Kab_Kota] ([Kd_Prov], [Kd_Kab_Kota]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Map_Unit] ADD
	FOREIGN KEY ([Kd_UrusanS], [Kd_BidangS], [Kd_UnitS], [Kd_SubS]) REFERENCES [Ref_S_Sub_Unit] ([Kd_Urusan], [Kd_Bidang], [Kd_Unit], [Kd_Sub]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Map5_17_108] ADD
	FOREIGN KEY ([Kd1], [Kd2], [Kd3], [kd4], [Kd5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek5_108] ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE [dbo].[Ref_Menu] ADD
	FOREIGN KEY ([User_ID]) REFERENCES [Ta_UserID] ([User_ID]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Pemda] ADD
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ref_Kab_Kota] ([Kd_Prov], [Kd_Kab_Kota]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Penyusutan] ADD
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3]) REFERENCES [Ref_Rek_Aset3] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek_2] ADD
	FOREIGN KEY ([Kd_Rek_1]) REFERENCES [Ref_Rek_1] ([Kd_Rek_1]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek_3] ADD
	FOREIGN KEY ([Kd_Rek_1], [Kd_Rek_2]) REFERENCES [Ref_Rek_2] ([Kd_Rek_1], [Kd_Rek_2]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek_4] ADD
	FOREIGN KEY ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3]) REFERENCES [Ref_Rek_3] ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek_5] ADD
	FOREIGN KEY ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3], [Kd_Rek_4]) REFERENCES [Ref_Rek_4] ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3], [Kd_Rek_4]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek_Aset2] ADD
	FOREIGN KEY ([Kd_Aset1]) REFERENCES [Ref_Rek_Aset1] ([Kd_Aset1]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek_Aset3] ADD
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2]) REFERENCES [Ref_Rek_Aset2] ([Kd_Aset1], [Kd_Aset2]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek_Aset4] ADD
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3]) REFERENCES [Ref_Rek_Aset3] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek_Aset5] ADD
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4]) REFERENCES [Ref_Rek_Aset4] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek1_108] ADD
	FOREIGN KEY ([Kd_Aset], [Kd_Aset0]) REFERENCES [Ref_Rek0_108] ([Kd_Aset], [Kd_Aset0]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek2_108] ADD
	FOREIGN KEY ([Kd_Aset], [Kd_Aset0], [Kd_Aset1]) REFERENCES [Ref_Rek1_108] ([Kd_Aset], [Kd_Aset0], [Kd_Aset1]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek3_108] ADD
	FOREIGN KEY ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2]) REFERENCES [Ref_Rek2_108] ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek4_108] ADD
	FOREIGN KEY ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2], [Kd_Aset3]) REFERENCES [Ref_Rek3_108] ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2], [Kd_Aset3]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Rek5_108] ADD
	FOREIGN KEY ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4]) REFERENCES [Ref_Rek4_108] ([Kd_Aset], [Kd_Aset0], [Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_S_Sub_Unit] ADD
	FOREIGN KEY ([Kd_Urusan], [Kd_Bidang], [Kd_Unit]) REFERENCES [Ref_S_Unit] ([Kd_Urusan], [Kd_Bidang], [Kd_Unit]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_S_Unit] ADD
	FOREIGN KEY ([Kd_Urusan], [Kd_Bidang]) REFERENCES [Ref_S_Bidang] ([Kd_Urusan], [Kd_Bidang]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_Unit] ADD
	FOREIGN KEY ([Kd_Bidang]) REFERENCES [Ref_Bidang] ([Kd_Bidang]) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ref_Pemda] ([Kd_Prov], [Kd_Kab_Kota]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ref_UPB] ADD
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub]) REFERENCES [Ref_Sub_Unit] ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Akses_Data_Rinc] ADD
	FOREIGN KEY ([Tahun], [No_Akses]) REFERENCES [Ta_Akses_Data] ([Tahun], [No_Akses]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_FotoA] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_A] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_FotoB] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_B] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_FotoC] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_C] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_FotoD] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_D] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_FotoE] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_E] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Kegiatan] ADD
	FOREIGN KEY ([Tahun], [Kd_Urusan], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_Prog], [ID_Prog]) REFERENCES [Ta_Program] ([Tahun], [Kd_Urusan], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_Prog], [ID_Prog]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIB_A] ADD
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ref_Pemda] ([Kd_Prov], [Kd_Kab_Kota]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Pemilik]) REFERENCES [Ref_Pemilik] ([Kd_Pemilik]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ref_UPB] ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIB_B] ADD
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ref_Pemda] ([Kd_Prov], [Kd_Kab_Kota]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Pemilik]) REFERENCES [Ref_Pemilik] ([Kd_Pemilik]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ref_UPB] ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIB_C] ADD
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ref_Pemda] ([Kd_Prov], [Kd_Kab_Kota]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Pemilik]) REFERENCES [Ref_Pemilik] ([Kd_Pemilik]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ref_UPB] ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIB_D] ADD
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ref_Pemda] ([Kd_Prov], [Kd_Kab_Kota]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Pemilik]) REFERENCES [Ref_Pemilik] ([Kd_Pemilik]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ref_UPB] ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIB_E] ADD
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ref_Pemda] ([Kd_Prov], [Kd_Kab_Kota]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ref_UPB] ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIB_F] ADD
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ref_Pemda] ([Kd_Prov], [Kd_Kab_Kota]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Pemilik]) REFERENCES [Ref_Pemilik] ([Kd_Pemilik]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ref_UPB] ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIBAHapus] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_A] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIBAR] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_A] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIBBHapus] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_B] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIBBR] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_B] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIBCHapus] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_C] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIBCR] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_C] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIBDHapus] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_D] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIBDR] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_D] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIBEHapus] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_E] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KIBER] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_E] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KILER] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_Lainnya] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_KILHapus] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_Lainnya] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Kontrak_Addendum] ADD
	FOREIGN KEY ([Tahun], [No_Kontrak]) REFERENCES [Ta_Pengadaan] ([Tahun], [No_Kontrak]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Lainnya] ADD
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ref_UPB] ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_LainnyaHapus] ADD
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_Lainnya] ([IDPemda]) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE [dbo].[Ta_P3D_Rinc] ADD
	FOREIGN KEY ([No_BAST]) REFERENCES [Ta_P3D] ([No_BAST]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Pemda] ADD
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ref_Pemda] ([Kd_Prov], [Kd_Kab_Kota]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Pemeliharaan] ADD
	FOREIGN KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ta_UPB] ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Pemeliharaan_Rinc] ADD
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Tahun], [No_SP2D], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ta_Pemeliharaan] ([Tahun], [No_SP2D], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Pengadaan] ADD
	FOREIGN KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ta_UPB] ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Pengadaan_Bast_Rinc] ADD
	FOREIGN KEY ([Tahun], [No_BAST]) REFERENCES [Ta_Pengadaan_Bast] ([Tahun], [No_BAST]) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE [dbo].[Ta_Pengadaan_Rinc] ADD
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Tahun], [No_Kontrak]) REFERENCES [Ta_Pengadaan] ([Tahun], [No_Kontrak]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Pengadaan_SP2D] ADD
	FOREIGN KEY ([Tahun], [No_Kontrak]) REFERENCES [Ta_Pengadaan] ([Tahun], [No_Kontrak]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Pengadaan_SP2D_Rinc] ADD
	FOREIGN KEY ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3], [Kd_Rek_4], [Kd_Rek_5]) REFERENCES [Ref_Rek_5] ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3], [Kd_Rek_4], [Kd_Rek_5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Tahun], [No_Kontrak], [No_SP2D], [Jn_SP2D]) REFERENCES [Ta_Pengadaan_SP2D] ([Tahun], [No_Kontrak], [No_SP2D], [Jn_SP2D]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Penghapusan_Rinc] ADD
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ref_UPB] ([Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ta_Pemda] ([Tahun], [Kd_Prov], [Kd_Kab_Kota]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Tahun], [No_SK]) REFERENCES [Ta_Penghapusan] ([Tahun], [No_SK]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Program] ADD
	FOREIGN KEY ([Kd_Urusan], [Kd_Bidang], [Kd_Unit], [Kd_Sub]) REFERENCES [Ref_S_Sub_Unit] ([Kd_Urusan], [Kd_Bidang], [Kd_Unit], [Kd_Sub]) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_RKBU] ADD
	FOREIGN KEY ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3], [Kd_Rek_4], [Kd_Rek_5]) REFERENCES [Ref_Rek_5] ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3], [Kd_Rek_4], [Kd_Rek_5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ta_UPB] ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_RKPBU] ADD
	FOREIGN KEY ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3], [Kd_Rek_4], [Kd_Rek_5]) REFERENCES [Ref_Rek_5] ([Kd_Rek_1], [Kd_Rek_2], [Kd_Rek_3], [Kd_Rek_4], [Kd_Rek_5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) REFERENCES [Ref_Rek_Aset5] ([Kd_Aset1], [Kd_Aset2], [Kd_Aset3], [Kd_Aset4], [Kd_Aset5]) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ta_UPB] ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Ruang] ADD
	FOREIGN KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) REFERENCES [Ta_UPB] ([Tahun], [Kd_Prov], [Kd_Kab_Kota], [Kd_Bidang], [Kd_Unit], [Kd_Sub], [Kd_UPB]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_SIPPT] ADD
	FOREIGN KEY ([Dev_Id]) REFERENCES [Ta_Dev] ([Dev_Id]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_Sub_Unit] ADD
	FOREIGN KEY ([Tahun], [Kd_Prov], [Kd_Kab_Kota]) REFERENCES [Ta_Pemda] ([Tahun], [Kd_Prov], [Kd_Kab_Kota]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_SusutB] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_B] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_SusutBL] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_B] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_SusutC] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_C] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_SusutCL] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_C] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_SusutD] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_D] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_SusutDL] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_D] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_SusutE] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_E] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_SusutEL] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_KIB_E] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE [dbo].[Ta_SusutL] ADD
	FOREIGN KEY ([IDPemda]) REFERENCES [Ta_Lainnya] ([IDPemda]) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 2026-02-21 06:17:26 UTC