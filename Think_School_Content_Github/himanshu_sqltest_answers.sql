
CREATE TABLE EMPLOYEE (
  emp_Id INTEGER,
  emp_name TEXT,
  job_name varchar(250),
  manager_id int,
  hire_date date,
  salary decimal(10,2),
  commission decimal(7,2),
  dept_id INTEGER
);

-- insert
INSERT INTO EMPLOYEE VALUES (68319, 'KAYLING', 'PRESIDENT',null ,'1991-11-18',6000.00 ,null, 1001 );
INSERT INTO EMPLOYEE VALUES (66928, 'BLAZE ', 'MANAGER',68319,'1991-05-01',2750.00, null,3001 );
INSERT INTO EMPLOYEE VALUES (67832 ,'CLARE', 'MANAGER',68319 ,'1991-06-09' ,2550.00 ,null,1001);
INSERT INTO EMPLOYEE VALUES (65646,'JONAS','MANAGER',68319 ,'1991-04-02' ,  2957.00 ,null,2001 );
INSERT INTO EMPLOYEE VALUES (67858, 'SCARLET', 'ANALYST' ,65646, '1997-04-19',3100.00,null,2001 );
INSERT INTO EMPLOYEE VALUES (69062,'FRANK','ANALYST', 65646, '1991-12-03', 3100.00, null,2001 );
INSERT INTO EMPLOYEE VALUES (63679,'SANDRINE','CLERK',69062, '1990-12-18',900.00,null,2001 );
INSERT INTO EMPLOYEE VALUES (64989,'ADELYN','SALESMAN',66928,'1991-02-20', 1700.00,400.00,3001 );
INSERT INTO EMPLOYEE VALUES (65271,'WADE','SALESMAN',66928, '1991-02-22', 1350.00, 600.00 , 3001);
INSERT INTO EMPLOYEE VALUES (66564,'MADDEN','SALESMAN',66928,'1991-09-28',1350.00,1500.00,3001);
INSERT INTO EMPLOYEE VALUES (68454 ,'TUCKER','SALESMAN',66928,'1991-09-08',1600.00,0.00,3001);
INSERT INTO EMPLOYEE VALUES (68736 ,'ADNRES','CLERK',67858,'1997-05-23',1200.00,null,2001 );
INSERT INTO EMPLOYEE VALUES (69000,'JULIUS','CLERK',66928,'1991-12-03',1050.00,null ,3001 );
INSERT INTO EMPLOYEE VALUES (69324 ,'MARKER','CLERK',67832,'1992-01-23',1400.00 ,null,1001);

-- fetch
/*
SELECT count(emp_name)
FROM EMPLOYEE WHERE job_name = 'MANAGER';*/



select count(emp_Id) as employee_as_manager
from EMPLOYEE where job_name = 'MANAGER';

select count(emp_Id) as number_of_employee
from EMPLOYEE 




----------------2------------------------

create table customer(
customer_id int,
cust_name varchar(250),
city varchar(250),
grade int,
salesman_id int);

insert into customer values(3002,'Nick Rimando','New York', 100,5001),
(3005,'Graham Zusi','California',200,5002),
(3004,'Fabian Johnson', 'Paris',300,5006),
(3007,'Brad Davis','New York',200,5001),
(3009,'Geoff Cameron','Berlin',100,5003),
(3008,'Julian Green','London',300,5002),
(3001,'Brad Guzan','London',null,5005),
(3003,'Jozy Altidore','Moscow',200,5007)

select*from customer

create table salesman(
salesman_id int,
name varchar(250),
city varchar(250),
commission decimal(10,2))

insert into salesman values(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5003,'Lauson Hense',' ', 0.12),
(5007,'Paul Adam','Rome',0.13)

select*from salesman 

select customer.cust_name,salesman.name
from customer
inner join salesman on customer.salesman_id =salesman.salesman_id
order by salesman.name


---------------------3----------------------------

create table orders(
ord_no int,
purch_amt decimal(10,2),
ord_date date,
customer_id int,
salesman_id int)

insert into orders values(70001,150.50,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.50,'2012-08-17',3009,5003),
(70007,948.50,'2012-09-10',3005,5002),
(70005,2400.60,'2012-07-27',3007,5001),
(70008,5760.00,'2012-09-10',3002,5001),
(70010,1983.43,'2012-10-10',3004,5006),
(70003,2480.40,'2012-10-10',3009,5003),
(70012,250.45,'2012-06-27',3008,5002),
(70011,75.29,'2012-08-17',3003,5007),
(70013,3045.60,'2012-04-25',3002,5001)



select orders.ord_no,customer.cust_name,orders.customer_id,orders.salesman_id
from orders,customer,salesman
where customer.city <> salesman.city
and orders.customer_id = customer.customer_id
and orders.salesman_id = salesman.salesman_id
order by customer.cust_name



-----------------4---------------------------
select distinct orders.ord_no,customer.cust_name
from orders,customer
where customer.customer_id = orders.customer_id



--------------------------------5---------------------------------

select customer.cust_name as "Customer",
customer.grade as "Grade"
from orders, salesman, customer
where orders.customer_id = customer.customer_id
and orders.salesman_id = salesman.salesman_id
and salesman.city is not null
and customer.grade is not null
order by customer.grade asc, customer.cust_name 



-----------------------------------6-----------------------------------

select customer.cust_name as "Customer",
customer.city as "City",
salesman.name as "Salesman",
salesman.commission
from customer,salesman
where customer.salesman_id = salesman.salesman_id
AND salesman.commission
BETWEEN 0.12 AND 0.14
order by commission asc


---------------------------------7-----------------------------------
select orders.ord_no,customer.cust_name,  commission as "Commission%",
purch_amt*commission as "Commission"
FROM salesman,orders,customer
WHERE orders.customer_id = customer.customer_id
AND orders.salesman_id = salesman.salesman_id
AND customer.grade>=200
order by commission desc;




-----------------------------------8-------------------------------------


select*
from EMPLOYEE
where dept_id = 1001 and salary>(select avg(salary) from EMPLOYEE  where dept_id = 2001)



----------------------------------9----------------------------------

select Employee.job_name
from EMPLOYEE
where Employee.dept_id = 1001
and Employee.job_name not in
(select job_name
  from EMPLOYEE
 where Employee.dept_id =2001);

 -------------------------------10-----------------------------
 select *
from EMPLOYEE a,
     EMPLOYEE b
where a.manager_id = b.emp_id
  AND a.salary> b.salary;