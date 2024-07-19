

CREATE TABLE BenhNhan (
    MaBenhNhan  PRIMARY KEY NOT NULL,
    TenBenhNhan nVARCHAR(255) NOT NULL,
    DiaChi nVARCHAR(255) ,
    SoDienThoai  VARCHAR(10),
    NgaySinh DATE
);
CREATE TABLE BacSi (
    MaBacSi  PRIMARY KEY NOT NULL,
    TenBacSi nVARCHAR(255) NOT NULL,
    DiaChi nVARCHAR(255) ,
    SoDienThoai VARCHAR(10),
    NgaySinh DATE,
    ChuyenKhoa VARCHAR(50) NOT NULL
);
CREATE TABLE LichHen (
    MaLichHen VARCHAR(10)  PRIMARY KEY NOT NULL,
    MaBenhNhan VARCHAR(10)  NOT NULL,
    MaBacSi VARCHAR(10) NOT NULL,
    NgayHen DATE,
    GioHen TIME,
    MoTaBenh TEXT,
    FOREIGN KEY (MaBenhNhan) REFERENCES BenhNhan(MaBenhNhan),
    FOREIGN KEY (MaBacSi) REFERENCES BacSi(MaBacSi)
);
CREATE TABLE PhieuKhamBenh (
    MaPhieuKhamBenh VARCHAR(10)  PRIMARY KEY NOT NULL,
    MaLichHen VARCHAR(10)  NOT NULL,
    TienSuBenh nVARCHAR(255),
    TrieuChung nVARCHAR(255),
    ChanDoanBenh nVARCHAR(255),
    FOREIGN KEY (MaLichHen) REFERENCES LichHen(MaLichHen)
);
CREATE TABLE DonThuoc (
    MaDonThuoc VARCHAR(10)  PRIMARY KEY NOT NULL,
    MaLichHen VARCHAR(10) NOT NULL,
    TongTienThuoc int,
    FOREIGN KEY (MaLichHen) REFERENCES LichHen(MaLichHen)
);
CREATE TABLE ChiTietDonThuoc (
    MaChiTietDonThuoc VARCHAR(10)  PRIMARY KEY NOT NULL,
    MaDonThuoc VARCHAR(10) NOT NULL,
    MaThuoc VARCHAR(10) NOT NULL,
    SoLuongThuoc int,
    DonGia int,
    FOREIGN KEY (MaDonThuoc) REFERENCES DonThuoc(MaDonThuoc),
    FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc)
);


INSERT INTO BenhNhan (MaBenhNhan, TenBenhNhan, DiaChi, SoDienThoai, NgaySinh) 
VALUES 
('BN001', 'Nguyen Van A', '123 Nguyen Trai, Quan 1, TP.HCM', '0901234567', '2000-01-01'),
('BN002', 'Tran Thi B', '456 Le Lai, Quan 5, TP.HCM', '0902345678', '1999-02-02'),
('BN003', 'Pham Van C', '789 Pham Van Dong, Thu Duc, TP.HCM', '0903456789', '1998-03-03'),
('BN004', 'Le Thi D', '234 Nguyen Dinh Chieu, Quan 3, TP.HCM', '0904567890', '1997-04-04'),
('BN005', 'Vu Van E', '567 Tran Hung Dao, Quan 10, TP.HCM', '0905678901', '1996-05-05'),
('BN006', 'Hoang Thi F', '890 Le Van Sy, Quan Tan Binh, TP.HCM', '0906789012', '1995-06-06'),
('BN007', 'Nguyen Van G', '123 Le Thi Rieng, Quan 1, TP.HCM', '0907890123', '1994-07-07'),
('BN008', 'Tran Van H', '456 Le Van Viet, Quan 9, TP.HCM', '0908901234', '1993-08-08'),
('BN009', 'Pham Thi I', '789 Vo Van Kiet, Quan 5, TP.HCM', '0909012345', '1992-09-09'),
('BN010', 'Le Van J', '234 Nguyen Hue, Quan 1, TP.HCM', '0900123456', '1991-10-10');


INSERT INTO BacSi (MaBacSi, TenBacSi, DiaChi, SoDienThoai, NgaySinh, ChuyenKhoa) 
VALUES 
('BS001', 'Nguyen Van A', '123 Nguyen Trai, Quan 1, TP.HCM', '0901234567', '1980-01-01', N'Ngoai Khoa'),
('BS002', 'Tran Thi B', '456 Le Lai, Quan 5, TP.HCM', '0902345678', '1975-02-02', N'San Khoa'),
('BS003', 'Pham Van C', '789 Pham Van Dong, Thu Duc, TP.HCM', '0903456789', '1970-03-03', N'Nhi Khoa'),
('BS004', 'Le Thi D', '234 Nguyen Dinh Chieu, Quan 3, TP.HCM', '0904567890', '1965-04-04', N'Tai Mui Hong'),
('BS005', 'Vu Van E', '567 Tran Hung Dao, Quan 10, TP.HCM', '0905678901', '1960-05-05', N'Tim Mạch'),
('BS006', 'Hoang Thi F', '890 Le Van Sy, Quan Tan Binh, TP.HCM', '0906789012', '1985-06-06', N'Răng Hàm Mặt'),
('BS007', 'Nguyen Van G', '123 Le Thi Rieng, Quan 1, TP.HCM', '0907890123', '1988-07-07', N'Da Liễu'),
('BS008', 'Tran Van H', '456 Le Van Viet, Quan 9, TP.HCM', '0908901234', '1990-08-08', N'Thần Kinh'),
('BS009', 'Pham Thi I', '789 Vo Van Kiet, Quan 5, TP.HCM', '0909012345', '1995-09-09', N'Rối Loạn Tiêu Hóa'),
('BS010', 'Le Van J', '234 Nguyen Hue, Quan 1, TP.HCM', '0900123456', '1998-10-10', N'Tâm Lý Học');

INSERT INTO LichHen (MaLichHen, MaBenhNhan, MaBacSi, NgayHen, GioHen, MoTaBenh)
VALUES
('LH001', 'BN001', 'BS001', '2023-04-01', '09:00:00', N'Đau đầu'),
('LH002', 'BN002', 'BS001', '2023-04-02', '10:00:00', N'Sốt cao'),
('LH003', 'BN003', 'BS002', '2023-04-03', '11:00:00', N'Đau bụng'),
('LH004', 'BN004', 'BS003', '2023-04-04', '12:00:00', N'Ho, khó thở'),
('LH005', 'BN005', 'BS003', '2023-04-05', '13:00:00', N'Sổ mũi, đau họng'),
('LH006', 'BN006', 'BS004', '2023-04-06', '14:00:00', N'Đau tai'),
('LH007', 'BN007', 'BS004', '2023-04-07', '15:00:00', N'Mất ngủ'),
('LH008', 'BN008', 'BS005', '2023-04-08', '16:00:00', N'Đau thắt ngực'),
('LH009', 'BN009', 'BS006', '2023-04-09', '17:00:00', N'Nứt góc miệng'),
('LH010', 'BN010', 'BS006', '2023-04-10', '18:00:00', N'Sưng, đau răng');



INSERT INTO PhieuKhamBenh (MaPhieuKhamBenh, MaLichHen, TienSuBenh, TrieuChung, ChanDoanBenh)
VALUES
('PKB001', 'LH001', 'Không có', 'Đau đầu', 'Đau đầu căng thẳng'),
('PKB002', 'LH002', 'Sốt nhẹ', 'Sốt, đau đầu', 'Cảm cúm'),
('PKB003', 'LH003', 'Đau bụng kéo dài', 'Đau bụng, buồn nôn', 'Viêm ruột thừa'),
('PKB004', 'LH004', 'Sốt cao, ho, khó thở', 'Ho, khó thở', 'Nhiễm trùng đường hô hấp'),
('PKB005', 'LH005', 'Không có', 'Sổ mũi, đau họng', 'Cảm cúm'),
('PKB006', 'LH006', 'Không có', 'Đau tai', 'Viêm tai giữa'),
('PKB007', 'LH007', 'Mất ngủ kéo dài', 'Mất ngủ', 'Rối loạn giấc ngủ'),
('PKB008', 'LH008', 'Đau thắt ngực, khó thở', 'Đau thắt ngực', 'Đau thắt ngực do căng thẳng'),
('PKB009', 'LH009', 'Không có', 'Nứt góc miệng', 'Nhiễm vi khuẩn'),
('PKB010', 'LH010', 'Sưng, đau răng', 'Sưng, đau răng', 'Nhiễm trùng nha khoa');
