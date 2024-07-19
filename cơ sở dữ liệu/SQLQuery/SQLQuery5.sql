
USE SQLQuery


CREATE TABLE GiaoVien 
(
     MaGV NCHAR(10) ,
	 TEN NVARCHAR(100) 
) ;


CREATE TABLE SinhVien 
(
     MaSV NCHAR(10),
	 TEN NVARCHAR(100)
);

-- SỬA THÔNG TIN BẢNG
AlTER TABLE SinhVien ADD NgaySinh Date

