select * from employee_copy4;
create table employee_Package as select * from  employees ;
select * from employee_package;


select salary from employee_package
order by salary ;
--17000 , 14000, 13500 , 13000 , 12008 ,12000

select max(salary) from employee_package where salary < (select max(salary) from employee_package);
select max(salary) from employee_package where salary < (select max(salary) from employee_package
where salary < (select max(salary) from employee_package) );

select min(Salary) from employee_package;
select min(salary) from employee_package where salary > (select min(salary) from employee_package); 

select min(salary) from employee_package where salary > (select min(salary) from employee_package where salary > (select min(salary) from employee_package) ); 

--4) Display the jobid and number of employees as No_Emps. 
--display only  the jobId which has maximum no_emps number employees  sort record based on job_id 
select job_id, count(employee_id) as No_Emps from employees group by job_id 
HAVING count(employee_id) >= ALL  (select count(employee_id) as No_Emps from employees group by job_id);


select department_id, MAX(Salary) from employees group by department_id 
having MAX(Salary) >= ALL (select MAX(Salary) from employees group by department_id);


--date 
select hire_DAte from Employeecopy;
select hire_date ,extract(month from hire_Date) as Months from employeecopy;


--@C:\Users\2327838\Downloads\salary_process_package_Script.sql

SELECT * from empsal;
select * from empattendance;
SELECT * from emp55;
SELECT * from BANKSTATEMENT;



select * from employees;
select employee_id,max(salary) from employees 
group by employee_id having max(Salary) >= all (select max(salary) from employees 
group by employee_id);

select max(Salary) from employees;
select max(salary) from employees where salary < (select max(Salary) from employees where salary < (select max(Salary) from employees));
select min(Salary) from employees where salary > (select min(Salary) from employees) ;

--dates 
select sysdate from dual;
select sysdate,sysdate+5 ,sysdate - 5 from dual;
select systimestamp from dual;
select employee_id,hire_DAte from employees;

select employee_id,to_char(hire_DAte,'YEAR') from employees;
select employee_id,to_char(hire_DAte,'MONTH') from employees;
select employee_id,to_char(hire_DAte,'DAY') from employees;

select employee_id,(extract(month from hire_Date)) from employees;
select add_months(sysdate , 1) from dual;
select add_months(sysdate,-2) from dual;
select to_char(sysdate,'DAY') from dual;
select to_char(sysdate,'MONTH') from dual;
select to_num(to_char(sysdate,'YEAR')) from dual;

select next_Day(Sysdate,'sunday') from dual;
select floor(MONTHS_BETWEEN(SYSDATE,hire_date)/12) as years from employees;

SELECT ROUND(235.415, 1) AS RoundValue from dual;
select floor(2.9) from dual;
select ceil(2.3) from dual;
select to_Char(hire_Date ,'FMMonth') from employees;


select extract(month from hire_Date) from employees where extract(month from hire_Date)='january';


select max(Salary) from employees where salary < (select max(salary) from employees);




select hire_DAte from employees;
select extract(month from hire_DAte) from employees;
select to_Char(hire_DAte,'day') from employees;
select to_Char(hire_DAte,'month') from employees;
select to_Char(hire_DAte,'year') from employees;

select (sysdate-hire_date) from employees;
select datediff(month,sysdate,hire_Date) from employees;
commit;

create table test123(id varchar2(10),firstname varchar2(10),lastname varchar2(10));
insert into test123 values(null,'ab','cd');
insert into test123 values(null,null,'cde');

select id,firstname,lastname,coalesce(id,firstname,lastname) from test123;

commit;
