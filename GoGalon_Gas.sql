create database DB_GOGALONGAS

use DB_GOGALONGAS

CREATE TABLE konsumen(
kd_konsumen varchar(6) primary key not null,
nama_kosumen varchar(50),
jenis_kelamin varchar(20),
alamat_konsumen varchar(100),
telp_konsumen varchar(20),
saldo_konsumen numeric (10)
)

CREATE TABLE barang(
kd_barang char(5) primary key not null,
nama_barang varchar(30) not null,
jumlah_barang numeric not null,
harga_barang numeric (10) not null,
)

Create Table transaksi (
kd_transaksi char (5) primary key not null,
kd_konsumen varchar (6)	foreign key references konsumen (kd_konsumen),
kd_karyawan char(5)		foreign key references karyawan (kd_karyawan),
kd_barang char(5)		foreign key references barang (kd_barang),
hari varchar(10) CHECK (hari IN ('senin', 'selasa', 'rabu', 'kamis', 'jumat','sabtu')),
tanggal datetime,
jumlah_barang numeric,
)

CREATE TABLE karyawan (
kd_karyawan char(5) primary key not null,
nama_petugas varchar(20) not null,
telepon_petugas varchar(15) null,
password varchar(10) not null,
alamat_karyawan varchar (20),
kd_owner char(5) foreign key references owner (kd_owner)
)

CREATE TABLE owner (
kd_owner char(5) not null primary key,
nama_owner varchar(20) not null,
telepon_owner varchar(15) null,
password varchar(10) not null,
alamat_owner varchar (20)
)

CREATE TABLE supplier(
kd_supplier char(5) primary key not null,
nama_supplier varchar(30) not null,
alamat_supplier varchar(30),
nomer_supplier numeric,
kd_owner char(5) foreign key references owner (kd_owner),
kd_barang char(5) foreign key references barang (kd_barang)
)