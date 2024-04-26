--select sum(salary) from employees 
--where to_Char(sysdate,'MONTH') 

select employee_id,(salary / 30 *((sysdate - hire_Date)))
from employees ;

select extract(month from hire_date  from employees;
select to_char(hire_date,'MM') from employees;

select initcap(to_Char(hire_Date ,'fmmonth')) from employees;
select employee_id from employees where extract(month from hire_Date) =06;
--select month(hire_date) from employees;


select * from emp55;
select * from empattendance;