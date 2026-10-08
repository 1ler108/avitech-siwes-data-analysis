create database if not exists schooldb;

use schooldb;

create table if not exists student(
FirstName varchar(20) not null,
MiddleName varchar(20) not null,
LastName varchar(20) not null,
Gender enum('M','F') not null,
course varchar(20) not null,
StudentNo int primary key
);


create table if not exists Department(
DepName varchar(20) not null,
StudentNo int not null,
foreign key (StudentNo) references Student (StudentNo)
);

insert into student(FirstName,MiddleName,LastName,Gender,course,StudentNO)
values
("Ade","Ayo","Wale","M","science",101),
("Adebanjo","Bisi","Precious","F","science",102),
("Daniel","Posi","Wale","M","science",103);

insert into department()
values
("sql",101)


