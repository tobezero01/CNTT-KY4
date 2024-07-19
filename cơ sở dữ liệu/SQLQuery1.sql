
USE QuanLyBanHang;

Create Table NHACUNGCAP(
	MACONGTY nvarchar (10)  not null,
	TENCONGTY NvarChar(40)  not null,
	TENGIAODICH NvarChar (30) ,
	DIACHI NvarChar(50) ,
	DIENTHOAI NvarChar(15) ,
	FAX NvarChar(15) ,
	EMAIL Nvarchar(30) 
	CONSTRAINT pk_ncc
	PRIMARY KEY (MACONGTY)
)

Create Table LOAIHANG(
	MALOAIHANG NvarChar(10)  not null,
	TENLOAIHANG NvarChar(40) 
	constraint pk_MaLoaiHang primary key (MALOAIHANG),
)
Create Table MATHANG(
	MAHANG NVARCHAR(10) not null,
	TENHANG NVARCHAR(50) NOT NULL,
	MACONGTY NVARCHAR(10),
	MALOAIHANG NVARCHAR(10),
	SOLUONG INT,
	DONVITINH NVARCHAR(10),
	GIAHANG INT
	CONSTRAINT pk_mh
	PRIMARY KEY(MAHANG)
	CONSTRAINT fk_MaCongTY FOREIGN KEY(MACONGTY) REFERENCES NHACUNGCAP(MACONGTY),
	CONSTRAINT fk_MaLoaiHang FOREIGN KEY(MALOAIHANG) REFERENCES LOAIHANG(MALOAIHANG),
)

create table KHACHHANG(
	MAKHACHHANG nvarchar(10) not null,
	TENCONGTY nvarchar(40) not null,
	TENGIAODICH nvarchar(30) not null,
	DIACHI nvarchar(50) null,
	EMAIL nvarchar(30) null,
	DIENTHOAI nvarchar(15) null,
	FAX nvarchar(15) null,
	constraint pk_KHACHHANG primary key (MAKHACHHANG),
)
create table NHANVIEN(
	MANHANVIEN nvarchar(10) not null,
	HO nvarchar(20) not null,
	TEN nvarchar(10) not null,
	NGAYSINH datetime null,
	NGAYLAMVIEC datetime null,
	DIACHI nvarchar(50) null,
	DIENTHOAI nvarchar(15) null,
	LUONGCOBAN int null,
	PHUCAP int null,
	constraint pk_NHANVIEN primary key (MANHANVIEN),
)
CREATE TABLE DONDATHANG (
    SOHOADON INT NOT NULL,
	MAKHACHHANG NVARCHAR(10),
	MANHANVIEN NVARCHAR(10),
	NGAYDATHANG DATETIME,
	NGAYGIAOHANG DATETIME,
	NGAYCHUYENHANG DATETIME,
	NOIGIAOHANG NVARCHAR(50),
	CONSTRAINT PK_DONDATHANG PRIMARY KEY (SOHOADON),
	FOREIGN KEY (MAKHACHHANG) REFERENCES KHACHHANG(MAKHACHHANG),
	FOREIGN KEY (MANHANVIEN) REFERENCES NHANVIEN(MANHANVIEN)
)

CREATE TABLE CHITIETDATHANG (
     SOHOADON INT NOT NULL,
	 MAHANG NVARCHAR(10) NOT NULL,
	 GIABAN INT,
	 SOLUONG SMALLINT,
	 MUCGIAMGIA NUMERIC(2,1),
	 CONSTRAINT PK_CTDH PRIMARY KEY (SOHOADON,MAHANG),
	 FOREIGN KEY (SOHOADON) REFERENCES DONDATHANG(SOHOADON),
	 FOREIGN KEY (MAHANG) REFERENCES MATHANG(MAHANG)
)
-- NHẬP DỮ LIỆU BẢNG
INSERT INTO NHACUNGCAP 
VALUES ('CT-01',N'Công ty Sữa Vinamilk','VINAMILK',N'Từ Sơn – Bắc Ninh','0123456789','650123456','Vinamilk01@mail.com'),
       ('CT-02',N'Điện máy xanh','DMX',N'Quốc Oai – Hà Nội','0234156783','651123457','Dmx02@gmail.com'),
	   ('CT-03',N'Công ty sữa bột','Sữa bột',N'Chí Linh –Hải Dương','0342179835','652123458','Suabot03@gmail.com'),
	   ('CT-04',N'Nhà máy nước lọc','AQUAFINA',N'Thanh Liêm – Hà Nam','0888999898','653123459','Aquafina04@gmail.com'),
	   ('CT-05',N'Công ty bột giặt OMO','OMO',N'Thanh Xuân – Hà Nội','0734562174','655123451','OMO05@gmail.com')

INSERT INTO LOAIHANG
VALUES ('LH-01',N'Nước lọc'),('LH-02',N'Sữa chua'),('LH-03',N'Sữa bột'),('LH-04',N'Máy giặt'),('LH-05',N'Bột giặt')

INSERT INTO MATHANG
VALUES  ('MH-01',N'Sữa chua không đường','CT-01','LH-02',50,N'Thùng',200000),
		('MH-02',N'Máy giặt LG','CT-02','LH-04',5,N'Cái',1000000),
		('MH-03',N'Sữa bột Ensure','CT-03','LH-03',20,N'Thùng',400000),
		('MH-04',N'Nước khoáng Lavie','CT-04','LH-01',100,N'Thùng',100000),
		('MH-05',N'Bột giặt OMO','CT-05','LH-05',1000,N'Gói',200000),
		('MH-06',N'Sữa bột Pediasure','CT-01','LH-03',100,N'Thùng',300000),
		('MH-07',N'Máy giặt Panasonic','CT-02','LH-04',10,N'Cái',1000000)

INSERT INTO NHANVIEN
VALUES  ('NV-01',N'Nhữ',N'Đức','2000-02-20','2023-02-02',N'Chí Linh - Hải Dương','0320040502',5000000,200000),
		('NV-02',N'Nguyễn',N'Khuyến','2000-04-15','2023-03-02',N'Thanh Miện - Hải Dương','0234567432',4300000,323000),
		('NV-03',N'Vũ',N'Nương','2002-02-19','2023-01-02',N'Thanh Oai - Hà Nội','0987586435',4400000,100000),
		('NV-04',N'Võ',N'Tòng','2003-04-11','2022-02-02',N'Từ Sơn - Bắc Ninh','0320300544',2000000,433300),
		('NV-05',N'Trần',N'Dần','1990-02-20','2023-03-02',N'Ba Đình - Hà Nội','0863802065',5430000,320000),
		('NV-06',N'Trương',N'Định','2000-02-14','2023-03-02',N'Thành Phố Bắc Giang - Bắc Giang','0545342453',4300000,340000),
		('NV-07',N'Hoàng',N'Phi Hồng','2001-04-19','2022-05-02',N'An Lão - Hải Phòng','0534524234',4300000,430000),
		('NV-08',N'Tống',N'Giang','2000-02-15','2023-03-04',N'Thành phố Hạ Long - Quảng Ninh','0514351354',5000000,340000)

INSERT INTO KHACHHANG
VALUES  ('KH-01',N'Vinamilk ',N'Sữa không đường',N'quận Ba Đình, Hà Nội','0984568237','021687948','abcd@gmail.com'),
		('KH-02',N'Masan Consumer',N'Nước tăng lực',N' Hoàn Kiếm, Hà Nội','0912456789','024855328','xyz@hotmail.com'),
		('KH-03',N'Unilever Vietnam',N'Bột giặt',N'phường Khương Đình, quận Thanh Xuân, Hà Nộ','0973345678','027498714','qwer@yahoo.com'),
		('KH-04',N'KIDO Group',N'Kẹo Sữa',N'quận Hai Bà Trưng, Hà Nội','0945678123','022245670','asd@outlook.com'),
		('KH-05',N'PepsiCo Vietnam',N'Đồ uống có cồn',N'quận Long Biên, Hà Nội','0968234567','025876543','poi@icloud.com'),
		('KH-06',N'Masan Consumer',N'Thực phẩm sống',N' quận Cầu Giấy, Hà Nội','0905789345','026634569','vm@gmail.com'),
		('KH-07',N'Vinamilk',N'Sữa có ít đường',N'phường Bến Thành, thành phố Hải Phòng','0932123456','023256901','lk@live.com')


INSERT INTO DONDATHANG
VALUES  (01,'KH-07','NV-02','2022-09-10','2022-09-16','2022-09-12',N'Bến Thành, thành phố Hải Phòng'),
		(02,'KH-06','NV-03','2022-12-12','2022-12-22','2022-12-14',N'quận Cầu Giấy, Hà Nội'),
		(03,'KH-05','NV-04','2022-03-06','2022-03-09','2022-03-06',N'Long Biên, Hà Nội'),
		(04,'KH-04','NV-01','2023-01-02','2023-01-05','2023-01-02',N'Hai Bà Trưng, Hà Nội'),
		(05,'KH-04','NV-04','2023-02-02','2023-02-07','2023-02-03',N'Hai Bà Trưng, Hà Nội'),
		(06,'KH-02','NV-07','2023-02-08','2023-02-13','2023-02-09',N'Hoàn Kiếm, Hà Nội'),
		(07,'KH-01','NV-05','2023-02-27','2023-03-02','2023-02-28',N'Ba Đình, Hà Nội')


INSERT INTO MATHANG
VALUES  ('MH-01',N'Sữa chua không đường','CT-01','LH-02',10,N'Thùng',200000),
		('MH-02',N'Máy giặt LG','CT-02','LH-04',5,N'Cái',1000000),
		('MH-03',N'Sữa bột Ensure','CT-03','LH-03',10,N'Thùng',400000),
		('MH-04',N'Nước khoáng Lavie','CT-04','LH-01',10,N'Thùng',100000),
		('MH-05',N'Bột giặt OMO','CT-05','LH-05',10,N'Gói',200000),
		('MH-06',N'Sữa bột Pediasure','CT-01','LH-03',10,N'Thùng',300000),
		('MH-07',N'Máy giặt Panasonic','CT-02','LH-04',10,N'Cái',1000000)
INSERT INTO CHITIETDATHANG
VALUES  (01,'MH-04',10000,2,2),
		(02,'MH-05',2000000,10,2),
		(03,'MH-03',400000,1,2),
		(04,'MH-07',1000000,1,1),
		(05,'MH-02',2000000,2,2),
		(06,'MH-01',200000,2,2),
		(07,'MH-06',600000,2,1)

DROP TABLE NHACUNGCAP

-- 2. Mã hàng, tên hàng và số lượng hiện có trong công ty
SELECT MAHANG 'Mã hàng',TENHANG 'Tên hàng',SOLUONG 'Số Lượng' FROM MATHANG

-- 7. Nhân viên nào trong công ty bán được nhiều hàng nhất và số lượng bán được là bao nhiêu?

SELECT TOP 1 DONDATHANG.MANHANVIEN 'Nhân Viên', SUM(CHITIETDATHANG.SOLUONG) TONG_SOLUONG
FROM DONDATHANG JOIN CHITIETDATHANG 
ON DONDATHANG.SOHOADON = CHITIETDATHANG.SOHOADON
GROUP BY DONDATHANG.MANHANVIEN
ORDER BY TONG_SOLUONG DESC ;

SELECT * FROM  NHANVIEN
--11.Xóa khỏi bảng NHANVIEN những nhân viên đã làm việc cho công ty trên 40 năm
DELETE FROM NHANVIEN 
WHERE DATEDIFF(year, NGAYLAMVIEC, GETDATE()) >= 40



alter table CHITIETDATHANG
	add constraint df_chitietdathang_Soluong  default 1 for SOLUONG,
		constraint df_chitietdathang_Mucgiamgia default 0 for MUCGIAMGIA;
alter table DONDATHANG
	add 
		constraint ck_date check((year(NGAYGIAOHANG)-year(NGAYDATHANG)>=0) and (year(NGAYGIAOHANG)-year(NGAYDATHANG)>=0));
alter table NHANVIEN
	add
		constraint ck_tuoinhanvien check( YEAR(NGAYLAMVIEC)-YEAR(NGAYSINH) BETWEEN 18 AND 61);