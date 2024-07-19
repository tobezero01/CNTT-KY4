use studentmanage;

create table if not exists `student` (
    `id` int(255) not null,
    `name` nvarchar(50) not null,
    `lastName` nvarchar(50) not null,
    `age` int(255) not null,
    `gender` nvarchar(50) not null,
    `address` nvarchar(50) not null,
    `phoneNumber` nvarchar(50) not null,
    `email` nvarchar(50) not null,
    `major` nvarchar(50) not null,
    `date` nvarchar(50) not null,
    `gpa` double not null,
    primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO student (id, name, lastName, age, gender, address, phoneNumber, email, major, date, gpa) VALUES
(1, 'John', 'Smith', 20, 'Male', '123 Main St, Anytown USA', '555-555-1234', 'john.smith@email.com', 'Computer Science', '2022-05-01', 3.8),
(2, 'Jane', 'Doe', 19, 'Female', '456 Maple Ave, Anytown USA', '555-555-5678', 'jane.doe@email.com', 'Biology', '2023-08-15', 3.5),
(3, 'David', 'Jones', 21, 'Male', '789 Oak St, Anytown USA', '555-555-2468', 'david.jones@email.com', 'Psychology', '2022-05-01', 3.2),
(4, 'Emily', 'Brown', 18, 'Female', '321 Elm St, Anytown USA', '555-555-3698', 'emily.brown@email.com', 'History', '2023-08-15', 3.9),
(5, 'Michael', 'Johnson', 22, 'Male', '567 Pine Ave, Anytown USA', '555-555-1357', 'michael.johnson@email.com', 'Engineering', '2022-05-01', 3.6),
(6, 'Sarah', 'Davis', 19, 'Female', '890 Cedar Rd, Anytown USA', '555-555-7890', 'sarah.davis@email.com', 'Political Science', '2023-08-15', 3.4),
(7, 'William', 'Garcia', 20, 'Male', '147 Walnut St, Anytown USA', '555-555-2468', 'william.garcia@email.com', 'Sociology', '2022-05-01', 3.1),
(8, 'Megan', 'Rodriguez', 21, 'Female', '258 Oak St, Anytown USA', '555-555-1234', 'megan.rodriguez@email.com', 'Journalism', '2023-08-15', 3.8),
(9, 'Matthew', 'Wilson', 18, 'Male', '369 Maple Ave, Anytown USA', '555-555-5678', 'matthew.wilson@email.com', 'Education', '2022-05-01', 3.5),
(10, 'Amanda', 'Lopez', 22, 'Female', '468 Oak St, Anytown USA', '555-555-3698', 'amanda.lopez@email.com', 'Mathematics', '2023-08-15', 3.9),
(11, 'Christopher', 'Lee', 20, 'Male', '579 Cedar Rd, Anytown USA', '555-555-1357', 'christopher.lee@email.com', 'Chemistry', '2022-05-01', 3.6);


create table if not exists `user` (
    `idUser` int(255) not null,
    `userName` nvarchar(50) not null,
    `password` nvarchar(50) not null,
    primary key (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into user (idUser, userName, password) values
(1, 'ducnhuad', 'ducnhu090323'),
(2, 'trungdz', 'trungmegai'),
(3, 'tungdz', 'tungtien123');