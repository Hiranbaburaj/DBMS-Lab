create database bank;
use bank;

create table branch(branch_name varchar(20) primary key, branch_city varchar(20), assets numeric(10,5));
create table customer(customer_name varchar(20) primary key,customer_street varchar(20), customer_city varchar(20));
create table loan(loan_no varchar(10) primary key, branch_name varchar(20), amount numeric(8,3), foreign key(branch_name) references branch(branch_name));
create table borrower(customer_name varchar(20),loan_no varchar(10),primary key(customer_name,loan_no));

alter table borrower add foreign key(customer_name) references customer(customer_name);
alter table borrower add foreign key(loan_no) references loan(loan_no);

create table account(account_number varchar(10) primary key,branch_name varchar(20),balance numeric(8,3),foreign key(branch_name) references branch(branch_name));
create table depositor(customer_name varchar(20),account_number varchar(10),
	primary key(customer_name,account_number),
    foreign key(customer_name) references customer(customer_name),
    foreign key(account_number) references account(account_number));
   
   
INSERT INTO branch VALUES ('Peroorkada','Trivandrum', 2574.34);  
INSERT INTO branch VALUES ('Pattoor','Trivandrum', 65716.97);    
INSERT INTO branch VALUES ('Chinnakada','Kollam', 15796.31);  
INSERT INTO branch VALUES ('Vyttila','Ernakulam', 87423.54);  
INSERT INTO branch VALUES ('Perumbavoor','Ernakulam', 97311.02);  
