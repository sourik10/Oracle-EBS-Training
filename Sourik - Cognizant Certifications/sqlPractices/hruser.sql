--Question 1
create table department_us(department_id number , department_name varchar2(40), location_id number); 
Select * from department_us; 

--Question 2
Create table EmployeeCopy as Select * from employees;
Select * from employeecopy;
Execute q2_procedure(90); -- Records with Department_id = 90 will be deleted
Select * from employeecopy;

--Question 3
Create table Employee_Copy as Select * from employees;
Select * from Employee_Copy;

---Question 4
Create table Employee_Copy4 as Select * from employees;
Select * from Employee_Copy4;

--Question 5
Create table Departments_Copy as Select * from Departments;
Select * from Departments_Copy;


--Function
--Question 1
Select * from Employee_Copy4;

--Question 2
Select * from Departments_Copy;
Select * from Employee_Copy4;

--Question 4
Create table Employee_function as Select * from employees;
Select * from Employee_function ;


--  trigger 
-- question 1
create table Employee_trigger1 as Select * from Employees;
select * from Employee_trigger1;
create table X_emp  ( Employee_id number , First_name VARCHAR2(30) , department_id number,deleted_date date);
select * from X_emp;

--Question 3
create table Employee_trigger3 as Select * from Employees;
select * from Employee_trigger3;

create table empoldsal (empid number , firstname varchar2(20) ,oldSalary number);
select * from empoldsal;


create table Employee_trigger4 as Select * from Employees;
select * from employees;
select * from x_emp;





















