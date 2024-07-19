
-- them du lieu
-- kieu so, so binh thuong
-- kieu ky tu va ngay can trong cap nhay don
-- neu la unicode thi can co N phia truoc N''

create table test (
     maso int,
	 Ten NVARCHAR(10),
	 NgaySinh DATE,
	 Nam BIT,
	 DiaChi char(20),
	 TienLuong float

)
INSERT dbo.SinhVien (MaSV,TEN,NgaySinh)
VALUES (N's', N'ducnhuad','2003-04-11')

INSERT dbo.test (maso ,
	 Ten ,
	 NgaySinh ,
	 Nam ,
	 DiaChi ,
	 TienLuong )
VALUES (10,N'Nhu', '2003-04-10', 1, 'dc', 1000)

INSERT dbo.test (maso ,
	 Ten ,
	 NgaySinh ,
	 Nam ,
	 DiaChi ,
	 TienLuong )
VALUES (10,N'Nhu', '2003-04-10', 1, 'dc', 1000)
INSERT dbo.test (maso ,
	 Ten ,
	 NgaySinh ,
	 Nam ,
	 DiaChi ,
	 TienLuong )
VALUES (10,N'Nhu', '2003-04-10', 1, 'dc', 1000)
INSERT dbo.test (maso ,
	 Ten ,
	 NgaySinh ,
	 Nam ,
	 DiaChi ,
	 TienLuong )
VALUES (10,N'Nhu', '2003-04-10', 1, 'dc', 1000)

-- xoa du lieu 
-- neu chi Delete <tenbang> => xoa toan bo du lieu trong bang
-- xoa cac truong mong muon them where
-- cac toan tu
-- < > >= <= <> and or "
DELETE dbo.test Where TienLuong > 5000 and maso < 2

-- update 
update dbo.test set TienLuong = 1000


