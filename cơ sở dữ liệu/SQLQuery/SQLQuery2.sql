use SQLQuery

-- tao  khoa chinh

-- khi chua tao bang 
create table testPK (
    ID int primary key,
	Ten nvarchar(100) default N'duc.com'
)
-- da tao bang r ma muon sua lai
alter table dbo.testPK and Primary key (ID)

-- tao pk trong bang ngay sau khi khai bao
create table testPK1 (
    ID int ,
	Ten nvarchar(100) default N'duc.com'
	primary key(ID)
)
-- tao pk trong bang ngay sau khi khai bao va dat ten cho no

create table testPK2 (
    ID int not null,
	Ten nvarchar(100) default N'duc.com'
	CONSTRAINT pk_testPK2 --sau xoa key cho de
	primary key (ID)
)

-- tao pk trong bang ngay sau khi khai bao va dat ten cho no
create table testPK3 (
    ID int not null,
	Ten nvarchar(100) default N'duc.com'	
)
alter table dbo.testPK3 add constraint pk_testPK3 primary key (ID)