create database QuanLyPhongKham;
use QuanLyPhongKham;
CREATE TABLE BacSi
(
  MaBacSi nvarchar(10) NOT NULL,
  TenBacSi nvarchar(50) NOT NULL,
  GioiTinh bit ,
  NgaySinh datetime ,
  SoDienThoai nvarchar(10) ,
  DiaChi nvarchar(255) ,
  ChuyenKhoa nVARCHAR(255),
  PRIMARY KEY (MaBacSi)
);

CREATE TABLE BenhNhan
(
  MaBenhNhan nvarchar(10) NOT NULL,
  TenBenhNhan nvarchar(50) NOT NULL,
  GioiTinh bit ,
  NgaySinh datetime ,
  SoDienThoai nvarchar(10) ,
  DiaChi nvarchar(255) ,
  PRIMARY KEY (MaBenhNhan)
);

CREATE TABLE HoaDon
(
  MaHoaDon nvarchar(10) NOT NULL,  
  TongTien INT ,
  NgayLap datetime,
  PRIMARY KEY (MaHoaDon)

);

CREATE TABLE PhieuKhamBenh
(
  MaPhieuKham nvarchar(10) NOT NULL,
  MaBacSi nvarchar(10) NOT NULL,
  MaBenhNhan nvarchar(10) NOT NULL,
  MaHoaDon nvarchar(10) NOT NULL,
  NgayKham datetime,
  TienSuBenh nvarchar(255) ,
  TrieuChung nvarchar(255) ,
  ChanDoanBenh nvarchar(255) ,
  PRIMARY KEY (MaPhieuKham),
  FOREIGN KEY (MaBacSi) REFERENCES BacSi(MaBacSi),
  FOREIGN KEY (MaBenhNhan) REFERENCES BenhNhan(MaBenhNhan),
  FOREIGN KEY (MaHoaDon) REFERENCES HoaDon(MaHoaDon)
);

CREATE TABLE DichVuKham
(
  MaDichVukham nVARCHAR(10) NOT NULL,
  TenDichVu nVARCHAR(255) ,
  GiaTien int ,
  PRIMARY KEY (MaDichVukham)
);

CREATE TABLE Thuoc
(
  MaThuoc nvarchar(10) NOT NULL,
  TenThuoc nvarchar(255) ,
  DonViTinh nvarchar(50) , 
  PRIMARY KEY (MaThuoc)
);
CREATE TABLE DonThuoc
(
  MaDonThuoc nvarchar(10)  NOT NULL,
  MaPhieuKham nvarchar(10) NOT NULL,
  NgayKe datetime ,
  DaMuaThuoc  bit ,
  TongTienThuoc int,
  PRIMARY KEY (MaDonThuoc),
  FOREIGN KEY (MaPhieuKham) REFERENCES PhieuKhamBenh(MaPhieuKham)
);

CREATE TABLE ChiTietDonThuoc
(
  MaDonThuoc nvarchar(10) NOT NULL,
  MaThuoc nvarchar(10) NOT NULL,
  SoLuong INT ,
  LieuDung nvarchar(50) ,
  DonGia INT ,
  PRIMARY KEY (MaThuoc, MaDonThuoc),
  FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc),
  FOREIGN KEY (MaDonThuoc) REFERENCES DonThuoc(MaDonThuoc)
);

CREATE TABLE PhieuKham_DichVu
(
  MaPhieuKham nvarchar(10) NOT NULL,
  MaDichVukham nvarchar(10) NOT NULL,
  PRIMARY KEY (MaPhieuKham, MaDichVukham),
  FOREIGN KEY (MaPhieuKham) REFERENCES PhieuKhamBenh(MaPhieuKham),
  FOREIGN KEY (MaDichVukham) REFERENCES DichVuKham(MaDichVukham)
);

use QuanLyPhongKham;
INSERT INTO BacSi (MaBacSi, TenBacSi,GioiTinh, DiaChi, SoDienThoai, NgaySinh, ChuyenKhoa) VALUES 
('BS001',N'Lý Mạc Sầu',0,N'Hà Nội', '0987674321', '1980-01-01',N'Ngoại khoa'),
('BS002',N'Chu Bá Thông',1,N'Hồ Chí Minh', '0982345678', '1985-02-15',N'Nhi'),
('BS003',N'Hoàng Dược Sư',1,N'Hà Nội', '0909871543', '1990-03-21',N'Răng hàm mặt'),
('BS004',N'Hồng Thất Công',1,N'Hải Phòng', '0912345678', '1950-04-13',N'Răng hàm mặt'),
('BS005',N'Âu Dương Phong',1,N'Hà Nam', '0987454321', '1982-05-30',N'Tim mạch'),
('BS006',N'Trùng Vương Trân Nhân',1,N'Hà Nội', '0909876543', '1955-06-24',N'Da liễu'),
('BS007',N'Đoàn Dự',1,N'Bắc Giang', '0912345457', '1977-07-17',N'Tiêu hoá'),
('BS008',N'Hư Trúc',1,N'Thái Nguyên', '0987623321', '1983-08-07',N'Thần kinh'),
('BS009',N'Vương Tổ Hiền',0,N'Hải Dương', '0909856543', '1977-09-28',N'Tâm thần'),
('BS010',N'Trương Tam Phong',1,N'Thanh Hoá', '0912345678', '1986-10-02',N'Khoa Nội');

INSERT INTO BenhNhan(MaBenhNhan,TenBenhNhan,GioiTinh,DiaChi,SoDienThoai,NgaySinh) VALUES
('BN001',N'Nguyễn Tiến Tùng',1,N'Hà Nội', '0183456789', '2000-01-01'),
('BN002',N'Nguyễn Thế Trung',1,N'Hà Nội', '0988654321', '1995-02-02'),
('BN003',N'Nhữ Đình Đức',1,N'Hà Nội', '0123456689', '1980-03-03'),
('BN004',N'Doãn Quốc Dam',1,N'Hà Nội', '0987655321', '1970-04-04'),
('BN005',N'Mục Niệm Từ',0,N'Hà Nội', '0193456789', '1999-05-05'),
('BN006',N'Dương Quá',1,N'Hà Nội', '0987654321', '1953-06-06'),
('BN007',N'Quách Tĩnh',1,N'Hà Nội', '0127456789', '1985-07-07'),
('BN008',N'Hoàng Dung',0,N'Hà Nội', '0987554321', '1988-08-08'),
('BN009',N'Trương Vô Kị',1,N'Hà Nội', '0183456789', '1957-09-09'),
('BN010',N'Triệu Mẫn',0,N'Hà Nội', '0587654321', '2002-10-10');

INSERT INTO DichVuKham (MaDichVuKham,TenDichVu, GiaTien)
VALUES ('DV001', N'Khám tổng quát',600000),
('DV002', N'Khám Thần Kinh',500000),
('DV003', N'Khám nội khoa',200000),
('DV004', N'Khám sản phụ khoa',450000),
('DV005', N'Khám răng - nha khoa',150000),
('DV006', N'Khám mắt - khoa mắt',250000),
('DV007', N'Khám tai mũi họng - khoa TMH',150000),
('DV008', N'Khám tâm lý',100000),
('DV009', N'Khám chuyên khoa tim mạch',250000),
('DV010', N'Khám chuyên khoa tiêu hóa',100000);

INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTinh) VALUES
('TH001', 'Paracetamol',N'Viên'),
('TH002', 'Amoxicillin',N'Viên'),
('TH003', 'Salbutamol',N'Viên'),
('TH004', 'Ibuprofen',N'Viên'),
('TH005', 'Loratadine',N'Viên'),
('TH006', 'Aspirin',N'Viên'),
('TH007', 'Dexamethasone',N'Viên'),
('TH008', 'Cetirizine',N'Viên'),
('TH009', 'Chlorpheniramine',N'Viên'),
('TH010', 'Metformin',N'Viên');
use QuanLyPhongKham
INSERT INTO HoaDon(MaHoaDon) VALUES
('HD001'),
('HD002'),
('HD003'),
('HD004'),
('HD005'),
('HD006'),
('HD007'),
('HD008'),
('HD009'),
('HD010'),
('HD011'),
('HD012'),
('HD013'),
('HD014'),
('HD015')

use QuanLyPhongKham
INSERT INTO PhieuKhamBenh (MaPhieuKham, MaBacSi,MaBenhNhan,MaHoaDon,NgayKham, TienSuBenh, TrieuChung, ChanDoanBenh)
VALUES
('PKB001', 'BS010','BN001','HD001','2022-03-25',N'Bệnh tim mạch gia đình',N'Đau ngực, khó thở',N'Viêm cơ tim'),
('PKB002', 'BS001','BN005','HD002','2023-02-09',N'Không có',N'Đau đầu, chóng mặt',N'Mất ngủ'),
('PKB003', 'BS002','BN006','HD003','2021-05-19',N'Bị tiểu đường',N'Đau chân, mỏi mắt',N'Đường huyết cao'),
('PKB004', 'BS009','BN002','HD004','2023-03-10',N'Không có',N'Sốt, ho, đau họng',N'Viêm họng'),
('PKB005', 'BS008','BN007','HD005','2021-10-20',N'Bị tiểu đường gia đình',N'Đau đầu, mỏi mắt',N'Đường huyết cao'),
('PKB006', 'BS007','BN008','HD006','2018-07-18',N'Không có',N'Mệt mỏi, khó thở',N'Viêm phổi'),
('PKB007', 'BS006','BN009','HD007','2017-01-15',N'Bị cao huyết áp gia đình',N'Chóng mặt, buồn nôn',N'Cao huyết áp'),
('PKB008', 'BS005','BN010','HD011','2023-03-15',N'Không có',N'Đau bụng, tiêu chảy',N'Viêm đại tràng'),
('PKB009', 'BS004','BN003','HD012','2021-10-18',N'Bị viêm xoang',N'Đau đầu, sổ mũi',N'Viêm xoang'),
('PKB010', 'BS007','BN004','HD015','2023-01-15',N'Không có',N'Đau lưng, mỏi chân',N'Đau cột sống'),
('PKB011', 'BS001','BN003','HD008','2017-01-15',N'Không có',N'Đau đầu, buồn nôn',N'Cao huyết áp'),
('PKB012', 'BS002','BN002','HD009','2017-01-15',N'Không có',N'Chóng mặt, buồn nôn',N'Cao huyết áp'),
('PKB013', 'BS003','BN001','HD010','2017-01-15',N'Không có',N'Mệt mỏi, buồn nôn',N'Huyết áp thấp')


INSERT INTO DonThuoc(MaDonThuoc,MaPhieuKham,NgayKe,DaMuaThuoc) VALUES
('DT001','PKB001', '2022-03-27',1),
('DT002','PKB002','2023-03-10',1),
('DT003','PKB002','2023-02-19',0),
('DT004','PKB003','2021-05-21',0),
('DT005','PKB007','2023-01-17',1),
('DT006','PKB008','2023-03-18',0),
('DT007','PKB010','2023-01-19',1),
('DT008','PKB003','2022-04-05',1),
('DT009','PKB005','2021-10-20',1),
('DT010','PKB006','2022-07-19',0),
('DT011','PKB009','2021-10-19',1),
('DT012','PKB004','2023-03-13',1),
('DT013','PKB002','2023-02-12',1)


INSERT INTO PhieuKham_DichVu (MaPhieuKham,MaDichVukham)
VALUES
('PKB001','DV009'),
('PKB002','DV008'),
('PKB003','DV001'),
('PKB004','DV007'),
('PKB005','DV001'),
('PKB006','DV003'),
('PKB007','DV001'),
('PKB008','DV003'),
('PKB009','DV007'),
('PKB010','DV003'),
('PKB012','DV010'),
('PKB013','DV009'),
('PKB001','DV007'),
('PKB002','DV009')

INSERT INTO ChiTietDonThuoc (MaDonThuoc, MaThuoc, SoLuong, LieuDung, DonGia) VALUES
('DT001', 'TH001', 10, N'Uống 1 viên sau khi ăn sáng', 1000),
('DT001', 'TH002', 4, N'Uống 1 viên trước khi ăn', 5000),
('DT002', 'TH003', 3, N'Uống 1 viên vào buổi tối', 15000),
('DT002', 'TH006', 10, N'Uống 1 viên vào buổi sáng và buổi tối', 500),
('DT002', 'TH008', 5, N'Uống 1 viên sau khi ăn trưa', 2000),
('DT003', 'TH001', 4, N'Uống 1 viên sau khi ăn sáng', 1000),
('DT003', 'TH005', 2, N'Uống 1 viên vào buổi tối', 3000),
('DT003', 'TH009', 3, N'Uống 1 viên trước khi ăn', 4000),
('DT004', 'TH004', 2, N'Uống 1 viên vào buổi sáng', 12000),
('DT004', 'TH010', 6, N'Uống 1 viên vào buổi tối', 5000),
('DT005', 'TH003', 4, N'Uống 1 viên vào buổi sáng', 15000),
('DT005', 'TH007', 10, N'Uống 1 viên vào buổi tối', 10000),
('DT006', 'TH004', 8, N'Uống 1 viên vào buổi trưa', 8000),
('DT006', 'TH008', 7, N'Uống 1 viên vào buổi sáng', 2000),
('DT007', 'TH006', 8, N'Uống 1 viên vào buổi tối', 500),
('DT008', 'TH001', 6, N'Uống 1 viên sau khi ăn sáng', 1000),
('DT008', 'TH009', 4, N'Uống 1 viên vào buổi sáng', 4000),
('DT009', 'TH002', 5, N'Uống 1 viên trước khi ăn', 5000),
('DT009', 'TH005', 2, N'Uống 1 viên vào buổi sáng và buổi tối', 3000),
('DT010', 'TH010', 3, N'Uống 1 viên trước khi ăn', 5000),
('DT011', 'TH005', 2, N'Uống 1 viên vào buổi sáng và buổi tối', 3000),
('DT012', 'TH005', 2, N'Uống 1 viên vào buổi sáng và buổi tối', 3000),
('DT013', 'TH005', 2, N'Uống 1 viên vào buổi sáng và buổi tối', 3000),
('DT009', 'TH004', 2, N'Uống 1 viên vào buổi sáng', 12000)

use QuanLyPhongKham
DELETE FROM ChiTietDonThuoc
WHERE MaDonThuoc IN (
	SELECT MaDonThuoc
	FROM DonThuoc
	WHERE MaPhieuKham IN (
		SELECT MaPhieuKham
		FROM PhieuKhamBenh
		WHERE DATEDIFF(YEAR, NgayKham, GETDATE()) >= 5
	)
)
DELETE FROM DonThuoc
WHERE MaPhieuKham IN (
	SELECT MaPhieuKham
	FROM PhieuKhamBenh
	WHERE DATEDIFF(YEAR, NgayKham, GETDATE()) >= 5
)
DELETE FROM PhieuKham_DichVu
WHERE MaPhieuKham IN (
	SELECT MaPhieuKham
	FROM PhieuKhamBenh
	WHERE DATEDIFF(YEAR, NgayKham, GETDATE()) >= 5
)

DELETE FROM PhieuKhamBenh
WHERE DATEDIFF(YEAR, NgayKham, GETDATE()) >= 5