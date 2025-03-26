create database employee;

use employee;

create table employee
(
id int,
emp_fname varchar(50),
emp_lname varchar(50),
emp_address varchar(100),
emp_contactno int,
DOE date,
age int
);

insert into employee(id,emp_fname,emp_lname,emp_address,emp_contactno,DOE,age) VALUES 
(101,"vinayak","nikam","pune","99882233","2002-11-02","22");

select *from employee;

insert into employee(id,emp_fname,emp_lname,emp_address,emp_contactno,DOE,age) VALUES 
(102,"vaishnav","jadhav","satara","51223453","2005-11-04","23");

insert into employee(id,emp_fname,emp_lname,emp_address,emp_contactno,DOE,age) VALUES 
(103,"prathamesh","dixit","beed","11213433","2005-08-02","20");

insert into employee(id,emp_fname,emp_lname,emp_address,emp_contactno,DOE,age) VALUES 
(104,"shreyash","borole","jalgaon","20224536","2005-08-02","20");

insert into employee(id,emp_fname,emp_lname,emp_address,emp_contactno,DOE,age) VALUES 
(105,"prasad","shelke","nagar","22331234","2004-07-01","19");

insert into employee(id,emp_fname,emp_lname,emp_address,emp_contactno,DOE,age) VALUES 
(106,"sanika","shinde","dharashiv","843434568","2001-02-16","23");

insert into employee(id,emp_fname,emp_lname,emp_address,emp_contactno,DOE,age) VALUES 
(107,"vinaya","shinde","dharashiv","55223311","2001-02-15","23");

insert into employee(id,emp_fname,emp_lname,emp_address,emp_contactno,DOE,age) VALUES 
(108,"nandini","fender","bhandara","15423457","2007-04-01","19");

insert into employee(id,emp_fname,emp_lname,emp_address,emp_contactno,DOE,age) VALUES 
(109,"nikita","jamdare","jalna","99223456","2006-03-01","18");

insert into employee(id,emp_fname,emp_lname,emp_address,emp_contactno,DOE,age) VALUES 
(110,"apeksha","veer","ahilyanagar","12123454","2001-04-21","24");

select *from employee;


-- using where clause 
-- the where clause is used to filter the records 
-- it is used to extract only those records that fulfill a specified conditions.

 
select *from employee where age =19;

select *from employee where emp_address = "pune";


-- below query is used to singal record from table 

select emp_fname from employee where emp_fname like "s%";

select emp_fname from employee where emp_address like "pune";

select *from employee where emp_address like "satara"; 

select *from employee where emp_fname like "a%";

select *from employee where id like "101";

-- constraints 
 
 -- NOT NULL : it ensure that column cannot have null value 
 
 -- unique : ensure that all values in a column are different 
 
 -- default : sets a default value for a column when no value is specified 
 
 -- check : ensure that all values in a column satisfy a specific condition
  
  -- primary key : primary key is a combination of NOT NULL and unique value
  
  -- foreign key : a foreign key is a column key is a in one table that referes. to the primary key in another table .
  
  
  create table student
  (
  stud_id int not null unique,
  stud_name varchar(50) not null,
  email varchar(100) not null unique,
  age int check (age >=18),
  address varchar(100) default ("not provided")
  );
  
  
insert into student (stud_id,stud_name,email,age) VALUES (02,"sam","sam03@gmail.com","21");
  
insert into student (stud_id,stud_name,email,age,address) VALUES (03,"raj","raj06@gmail.com","25","pune");

insert into student (stud_id,stud_name,email,age,address) VALUES (04,"shiv","shiv@gmail.com","17","satara");

insert into student (stud_id,stud_name,email,age) VALUES (05,"sunil","sunil163@gmail.com","20");


insert into student (stud_id,stud_name,email,age,address) VALUES (06,"rohit","rohit07@gmail.com","23","sangli");

select *from student;


-- operators 

-- AND , OR , NOT 

-- AND : IT RETURNS TRUE IF BOTH CONDITIONS ARE TRUE 

-- OR : IT RETURNS TRUE IF ATLEAST ONE CONDITION IS TRUE 

-- NOT : REVERSE THE RESULT OF A CONDITION 

-- AND OPERATOR 

select *from employee 
where age >17 AND age <21;

-- OR OPERATOR 

select *from employee 
where emp_address ="pune" OR emp_address="dharashiv";

-- NOT OPERATOR

select *from employee
where not emp_address ="pune" AND not emp_address="satara";


select *from employee
where not age ="20";

-- IN operator 
-- the IN operator allow you to specify multiple value in a where clause.


select *From employee where age IN(19,20,22);

select *from employee where emp_address IN("pune","satara","beed");

-- LIKE operator 
-- the LIKE operaotor used in a where clause to search for a specified patterns in a column.
-- "a%" it is used to show name starts from a 
-- "%a" it is used to show name ends with a 


select *from employee where emp_fname like "a%";

select *from employee where emp_fname like "%a";

select *from employee where emp_fname like "%a%";

-- BETWEEN OPERATOR 
-- The BETWEEN operator selects values within a given range.
-- The values can be numbers, text, or dates.

select *From employee where age between 20 and 23;


select *From employee where age not between 20 and 23;

select *from employee where emp_fname between "apeksha" and "prathamesh";

-- IS NULL AND IS NOT NULL 
-- The IS NULL operator is used to test for empty values (NULL values)
-- The IS NOT NULL operator is used t o test for non-empty values (NOT NULL values).
-- adding values for term understanding ..

insert into student(stud_id,stud_name,email,age,address)VALUES (11,"pranav","pranav06@gmail.com",null,null);

insert into student(stud_id,stud_name,email,age,address)VALUES (12,"rushikesh","rushi07@gmail.com",null,"bhosari");


select *from student;

select *from student  where age is null;

select *from student where age is not null;

select *from student where address is null;

select *from student where address is not null; 

select *from student where age is null and address is not null;


-- ORDER BY 
-- The ORDER BY keyword isused to sort the result set in ascending or descending order.

select *from employee order by age desc;

select *from student order by stud_id asc;

select *from employee order by id desc;

select *from employee order by emp_fname desc;

-- distinct 

select distinct city from customers;

select distinct state from customers;

-- limit and offset 
-- if you want to the number of results that are returned. you can simply use the limit command with several rows to limit by 

select *from employee where age >20 limit 5;

select *from employee where emp_fname like "v%" limit 2;


-- offset : you can also specify on offset from where to start returning data.

 select *from employee limit 5 offset 2;

select * from employee limit 5 offset 4;

select *from customers  where creditLimit <50000 limit 10; 

-- aggregate function 
-- sum , count , avg, min , max 

-- count 

select *from student where address is not null;

alter table student
add column stud_fees int (50);

select count(creditLimit) from customers where creditLimit <50000;

select sum(creditLimit)as sum_creditlimit from customers;

select count(creditLimit)as total_creditlimit from customers;

select min(creditLimit) as total_creditlimit from customers;

select max(creditLimit) as total_creditlimit from customers;

-- update 
  -- update is used to modify existing records 
  
   update employee set emp_fname ="pratik" where id ="103";
   
   -- delete 
   -- delete is used to delete existing records 
   
   delete from employee where id ="105";

 -- rename 
 -- rename is used to rename the table name .
    rename table patient to patient_data;
  
