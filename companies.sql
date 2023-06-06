drop database companies;
create database companies;
use companies;

create table jobs(job_id varchar(20) primary key, job_title varchar(40), 
min_salary numeric(10,3), max_salary numeric(10,3));

create table employees(employee_id varchar(20) primary key, first_name varchar(20),
last_name varchar(20), email varchar(20), phone_number int, hire_date date, job_id varchar(20),
salary numeric(10,3), manager_id varchar(20), department_id varchar(20));

create table dependents(
dependent_id varchar(20) primary key,
first_name varchar(20),
last_name varchar(20),
relationship varchar(20),
employee_id varchar(20));

create table departments(
department_id varchar(20) primary key,
department_name varchar(20),
location_id varchar(20));

create table regions
(region_id varchar(20) primary key,
region_name varchar(30));

create table countries
(country_id varchar(20) primary key,
country_name varchar(35),
region_id varchar(20));

create table locations
(location_id varchar(20) primary key,
street_address varchar(40),
postal_code varchar(20),
city varchar(20),
state_province varchar(20),
country_id varchar(20));

desc locations;
/*Data for the table regions */

INSERT INTO regions(region_id,region_name) VALUES 
(1,'Europe'),(2,'Americas'),(3,'Asia'),(4,'Middle East and Africa');
select * from jobs;
/*Data for the table countries */
drop table jobs;
INSERT INTO countries(country_id,country_name,region_id) VALUES
('AR','Argentina',2),('AU','Australia',3),('BE','Belgium',1),
('BR','Brazil',2),('CA','Canada',2),('CH','Switzerland',1),
('CN','China',3),('DE','Germany',1),('DK','Denmark',1),
('EG','Egypt',4),('FR','France',1),('HK','HongKong',3),
('IL','Israel',4),('IN','India',3),('I7','Italy', 1),
('JP','Japan',3),('KW','Kuwait',4),('MX','Mexico',2),
('NG','Nigeria',4),('NL','Netherlands',1),('SG','Singapore',3),
('UK','United Kingdom', 1),('US','United States of America',2),
('ZM','Zambia',4),('ZW','Zimbabwe', 4);

/*Data for the table locations */

INSERT INTO
locations(location_id,street_address,postal_code,city,state_province,country_id) 
VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake’',' Texas','US'), 
(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US'),
(1700,'2004 Charade Rd','98199','Seattle','Washington','US'),
(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),
(2400,'8204 Arthur St',NULL,'London',NULL,'UK'),
(2500,'Magdalen Centre, The Oxford Science Park','OX997B','Oxford','Oxford','UK'),
(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');

/*Data for the table jobs */

INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES 
(1,'Public Accountant',4200.00,9000.00),
(2,' Accounting Manager',8200.00,16000.00),
(3,'Administration Assistant',3000.00,6000.00),
(4,'President',20000.00,40000.00),
(5,'Administration Vice President', 15000.00,30000.00),
(6,'Accountant',4200.00,9000.00),
(7,'Finance Manager',8200.00,16000.00),
(8,'Human Resources Representative', 4000.00,9000.00),
(9,'Programmer',4000.00,10000.00),
(10,'Marketing Manager',9000.00,15000.00),
(11,'Marketing Representative',4000.00,9000.00),
(12,'Public Relations Representative',4500.00,10500.00),
(13,'Purchasing Clerk',2500.00,5500.00),
(14,'Purchasing Manager',8000.00,15000.00),
(15,'Sales Manager',10000.00,20000.00),
(16,'Sales Representative',6000.00,12000.00),
(17,'Shipping Clerk',2500.00,5500.00),
(18,'Stock Clerk',2000.00,5000.00),
(19,'Stock Manager',5500.00,8500.00);
/*Data for the table departments */

INSERT INTO departments(department_id,department_name,location_id)
VALUES (1,'Administration',1700),(2,'Marketing',1800),(3,'Purchasing', 1700),(4,'Human Resources', 2400),(5,'Shipping',1500),(6,'IT',1400),
(7,'Public Relations', 2700),(8,'Sales',2500),(9,'Executive', 1700),(10,'Finance',1700),(11,'Accounting', 1700);
/*Data for the table employees */

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(100,'Steven','King','steven.king@sqltutorial.org','515.123.4567','1987-06-17',4,24000.00,NULL,9),
(101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21',5,17000.00,100,9),
(102,'Lex','De Haan','lex.de haan@sgltutorial.org','515.123.4569','1993-01-13',5,17000.00,100,9),
(103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03',9,9000.00,102,6),
(104,'Bruce','Ernst','bruce.ernst@sgltutorial.org','590.423.4568','1991-05-21',9,6000.00,103,6),
(105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25',9,4800.00,103,6),
(106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05',9,4800.00,103,6),
(107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07',9,4200.00,103,6),

(108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','1994-08-17',7,12000.00,101,10),

(109,'Daniel','Faviet','daniel.faviet @sqltutorial.org','515.124.4169','1994-08-16',6,9000.00,108,10),

(110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28',6,8200.00,108,10),

(111,'1smael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30',6,7700.00,108,10),

(112,'Jose Manuel','Urman','jose manuel.urman@sqltutorial.org','515.124.4469','1998-03-07',6,7800.00,108,10),

(113,'Luis','Popp','luis.popp@sgltutorial.org','515.124.4567','1999-12-
07',6,6500.00,108,10); 

(114,'Den','Raphaely','den.raphaely@sgltutorial.org','515.127.4561','1994-12-
07',14,11000.00,100,3);


(115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562','1995
-05-18',13,3100.00,114,3);

(116,'Shelli','Baida’, 'shelli.baida@sqltutorial.org','515.127.4563','"1997-12-
24',13,2900.00,114,3)

(117,'Sigal’,'Tobias','sigal.tobias@sqltutorial.org','515.127.4564','1997-07-
24'13,2800.00,114,3);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(118,'Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565",'1998-11-
15',13,2600.00,114,3);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(119,'Karen’','Colmenares','karen.colmenares@sqltutorial.org','515.127.4566",

1999-08-10',13,2500.00,114,3);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(120,'Matthew','"Weiss','matthew.weiss@sqltutorial.org','650.123.1234",'1996-
07-18',19,8000.00,100,5);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(121,'Adam’,'Fripp’,'adam.fripp@sqltutorial.org','650.123.2234','1997-04-
10',19,8200.00,100,5);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(122,'Payam’,'Kaufling','payam.kaufling@sgltutorial.org','650.123.3234",'1995-
05-01',19,7900.00,100,5);
INSERT INTO
employees(employee_id, first _name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(123,'Shanta’,'Vollman','shanta.vollman@sqltutorial.org','650.123.4234','1997-
10-10',19,6500.00,100,5);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(126,'Irene’,"Mikkilineni','irene.mikkilineni@sgltutorial.org','650.124.1224','19
98-09-28',18,2700.00,120,5);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(145,"John','Russell','john.russell@sqltutorial.org',NULL,'1996-10-
01',15,14000.00,100,8);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(146,'Karen’','Partners’,'karen.partners@sqltutorial.org',NULL,'1997-01-
05',15,13500.00,100,8);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(176,'Jonathon’,'Taylor','jonathon.taylor@sqltutorial.org',NULL,'1998-03-
24',16,8600.00,100,8);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(177,Jack’,'Livingston',"jack.livingston@sqltutorial.org',NULL,'1998-04-
23',16,8400.00,100,8);
INSERT INTO
employees(employee_id, first _name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(178,'Kimberely','Grant’,'kimberely.grant@sqltutorial.org’,NULL,'1999-05-
24',16,7000.00,100,8);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(179,'Charles','Johnson’,'charles.johnson@sgltutorial.org',NULL,'2000-01-
04',16,6200.00,100,8);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(192,'Sarah’,'Bell','sarah.bell@sqltutorial.org','650.501.1876','1996-02-
04',17,4000.00,123,5);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(193,'Britney','Everett’,'britney.everett@sqltutorial.org','650.501.2876','1997-
03-03',17,3900.00,123,5);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES

(200, Jennifer',"Whalen','jennifer.whalen@sqltutorial.org','515.123.4444','198
7-09-17',3,4400.00,101,1);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(201,'Michael','Hartstein','michael.hartstein@sqltutorial.org','515.123.5555","1
996-02-17',10,13000.00,100,2);
INSERT INTO
employees(employee_id, first _name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(202,'Pat’,'Fay’,'pat.fay@sqltutorial.org','603.123.6666','1997-08-
17',11,6000.00,201,2);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(203,'Susan','Mavris','susan.mavris@sqltutorial.org','515.123.7777','1994-06-
07',8,6500.00,101,4);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(204,'Hermann’,'Baer','hermann.baer @sqltutorial.org','515.123.8888",'1994-
06-07',12,10000.00,101,7);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-
06-07',2,12000.00,101,11);

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_dat
e,job_id,salary,manager_id,department_id) VALUES
(206,'William','Gietz','william.gietz@sqltutorial.org','515.123.8181",'1994-06-
07',1,8300.00,205,11);
/*Data for the table dependents */

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee id)

VALUES (1,'Penelope’,'Gietz','Child',206);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (2,'Nick’,'Higgins','Child',205);

INSERT INTO

dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (3,'Ed','Whalen’,'Child',200);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee id)

VALUES (4,"Jennifer','King','Child',100);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (5,'Johnny','Kochhar','Child',101);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (6,'Bette’,'De Haan','Child’, 102);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee id)

VALUES (7,'Grace’,'Faviet','Child',109);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (8,'Matthew','Chen','Child',110);
INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (9,'Joe','Sciarra','Child', 111);

INSERT INTO
dependents(dependent_id,first name,last name,relationship,employee id)

VALUES (10,'Christian’,'Urman’,'Child',112);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee id)

VALUES (11,'Zero','Popp’,'Child", 113);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (12,'Karl','Greenberg','Child',108);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee id)

VALUES (13,'Uma’,'Mavris','Child',203);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (14,'Vivien','Hunold','Child', 103);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (15,'Cuba’,'Ernst’,'Child',104);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee id)

VALUES (16,'Fred','Austin’,'Child",105);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (17,'Helen’,'Pataballa’,'Child',106);
INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (18,'Dan’,'Lorentz','Child', 107);

INSERT INTO
dependents(dependent id, first name,last name,relationship,employee id)

VALUES (19,'Bob','Hartstein’,'Child', 201);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee id)

VALUES (20,'Lucille’,'Fay",'Child",202);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (21,'Kirsten','Baer','Child', 204);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee id)

VALUES (22,'Elvis','Khoo','Child',115);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (23,'Sandra’,'Baida’,'Child', 116);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (24,'Cameron’,'Tobias','Child’, 117);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee id)

VALUES (25,'Kevin','Himuro','Child', 118);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)

VALUES (26,'Rip','Colmenares’,'Child', 119);
INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee id)

VALUES (27,'Julia','Raphaely','Child', 114);

INSERT INTO
dependents(dependent_id,first name,last name,relationship,employee id)

VALUES (28,"Woody','Russell’,'Child’, 145);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee id)

VALUES (29,'Alec','Partners’,'Child', 146);

INSERT INTO
dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (30,'Sandra','Taylor','Child',176);0 REGIONS VALUES (4,’Middle East and Africa’);