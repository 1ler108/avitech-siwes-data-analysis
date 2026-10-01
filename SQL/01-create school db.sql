create database if not exists SchoolDb;

use SchoolDb;


create table if not exists student(
FirstName varchar(20) not null,
MiddleName varchar(20) not null,
LastName varchar(20) not null,
StudentNo varchar(20) not null,
Gender enum("M","F")
)
