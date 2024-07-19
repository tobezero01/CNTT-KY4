create database test12
go

use test12
go 

create table monHoc (
    MaBM char(10) not null,
	TenBM nvarchar(100) default N'ten bo mon',
	primary key (MaBM)
)

create table lop (
    MaLop char(10) not null,
	TenLop Nvarchar(100) default N'ten lop',
	primary key (MaLop)
)

create table GiaoVien (
    MaGV char(10) not null,
	TenGv nvarchar(100) default N'ten gia vien',
    DiaChi nvarchar(100) default N'dia chi gia vien',
	NgaySinh date,
	Sex bit,
	MaBM char(10),
	foreign key (MaBM) references dbo.monHoc(MaBM)
)
alter table GiaoVien add constraint Pk_GiaoVien primary key (MaGV)

create table HocSinh (
    MaHS char(10) primary key,
	TenHS Nvarchar(100) default N'ten hoc sinh',
	MaLop char(10)

)
alter table dbo.HocSinh add constraint fk_HocSinh foreign key(MaLop) references dbo.Lop(MaLop)
