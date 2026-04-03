create database company;
use company;
create table employee
(
fname varchar(20),
lname varchar(20),
minit varchar (20),
ssn int ,
bdate date ,
adress varchar(20),
sex varchar(7),
superssn int ,
dno int,
primary key (ssn)
);
create table department 
(
dname varchar(20),
dnumber int ,
mgrssn int ,
mgrstartdate date,
primary key (dnumber)
);
create table deot_location
(
Dnumber int ,
dlocation varchar (20)
);
alter table deot_location 
add primary key (dnumber , dlocation);

create table project 
(
pname varchar (20),
pnumber int,
plocation varchar (20),
dnum int ,
primary key (pnumber)
);
create table workson
(
essn int,
pno int,
hours int ,
primary key (essn,pno)
);
create table dependent 
(
essn int,
dependentname varchar(20),
sex varchar(20),
bdate date,
relationship varchar(20),
primary key (essn,dependentname)
);
alter table  employee
add foreign key (superssn) references employee(ssn);
alter table employee 
add foreign key (dno) references department(dnumber);
alter table deot_location
add foreign key (dnumber) references department (dnumber);
alter table department 
add foreign key (mgrssn) references employee (ssn);
alter table project
add foreign key (dnum) references department (dnumber);
alter table workson
add foreign key (essn) references employee (ssn);
alter table workson
add foreign key (pno) references project (pnumber);
alter table dependent
add foreign key (essn) references employee (ssn);
