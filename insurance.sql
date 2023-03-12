create database insurance;

use insurance;

create table car(license varchar(20) primary key, model varchar(25),year int);
create table accident(report_no varchar(10) primary key, date varchar(10),location varchar(100));
create table person(driverid varchar(10) primary key, name varchar(25),address varchar(100));
create table owns(driverid varchar(10), 
	license varchar(20), 
	primary key(driverid,license),foreign key(driverid) references person(driverid),
    foreign key(license) references car(license));   
create table participates(report_no varchar(10),license varchar(20), 
	driverid varchar(10), damageamount int(15),
    primary key(report_no,license),
    foreign key(report_no) references accident(report_no), foreign key(license) references car(license),
    foreign key(driverid) references person(driverid));
    
RENAME TABLE car TO vehicle;
ALTER TABLE person ADD COLUMN gender varchar(6);
ALTER TABLE accident DROP COLUMN location;
ALTER TABLE accident change report_no  report_number varchar(10);
ALTER TABLE participates modify damageamount numeric(15,5);

desc person;
INSERT INTO `person` (`driverid`, `name`, `address`, `gender`) VALUES ('1', 'Ram', 'Hyderbad, Telangana', 'M');
INSERT INTO `person` (`driverid`, `name`, `address`, `gender`) VALUES ('2', 'Davis', 'San Francisco, California', 'M');
INSERT INTO `person` (`driverid`, `name`, `address`, `gender`) VALUES ('3', 'Ivan', 'St. Petersburg, Russia', 'M');
INSERT INTO `person` (`driverid`, `name`, `address`, `gender`) VALUES ('4', 'Jane', 'Sydney, New South Wales', 'F');
INSERT INTO `person` (`driverid`, `name`, `address`, `gender`) VALUES ('5', 'Devi', 'Bengaluru, Karnataka', 'F');

INSERT INTO `vehicle` (`license`, `model`, `year`) VALUES ('1B','Cadillac','2013');
INSERT INTO `vehicle` (`license`, `model`, `year`) VALUES ('1C','Ferrari','2012');
INSERT INTO `vehicle` (`license`, `model`, `year`) VALUES ('1D','BMW','2020');
INSERT INTO `vehicle` (`license`, `model`, `year`) VALUES ('1E','Audi','2022');

INSERT INTO `accident`(`report_number`, `date`) VALUES ('HYD2745189','02-08-2018');
INSERT INTO `accident`(`report_number`, `date`) VALUES ('STP3941784','07-10-2020');
INSERT INTO `accident`(`report_number`, `date`) VALUES ('SYD78103460','20-03-2022');
INSERT INTO `accident`(`report_number`, `date`) VALUES ('BLR6657418','05-07-2021');

INSERT INTO `owns`(`driverid`, `license`) VALUES ([value-1],[value-2]);
INSERT INTO `participates`(`report_no`, `license`, `driverid`, `damageamount`) VALUES ('SF48627890','1B','2',547892.87);
