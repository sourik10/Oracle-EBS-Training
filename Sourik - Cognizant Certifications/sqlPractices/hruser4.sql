--select to_Char(sysdate,'YEAR') from dual;

--select location_id,count(department_id) 
--    from departments 
--    group by location_id;
--    
--select * from employees;
--select * from empoldsal;


--//q1
--Display the employees, with employeeid, firstname, job_id, salary and hike_salary, where 
--hike_salary is 20% hike from there salary and display only emp who get salary >10000 after salary hiked
select employee_id,first_name,salary, (salary*1.2) as hike_Salary
from employees where (salary*1.2)> 10000;

--//q2
select e.employee_id, e.first_name, d.department_name, e.job_id,l.city
from employees e join departments d on e.department_id = d.department_id 
join locations l on l.location_id = d.location_id
where d.department_id in (30,50,70,90)
order by e.first_name;

--q3
select d.department_name,count(e.employee_id) as NO_Emp
from departments d join employees e on d.department_id = e.department_id
group by d.department_name
order by count(e.employee_id) desc;

--q4
select job_id, count(employee_id) as No_Emps from employees
group by job_id 
    HAVING count(employee_id) >= ALL  (select count(employee_id) as 
    No_Emps from employees 
    group by job_id);

--q5
select e.employee_id, e.first_name, e.job_id,e.salary
from employees e join departments d on e.department_id = d.department_id 
where d.department_name ='IT';

--q6

select distinct a.employee_id ,a.first_name as Manager_NAme, a.job_id, a.department_id
from employees a join employees b 
on a.employee_id = b.manager_id;


--plSQL Q2
create table manager as select * from employees ;
select * from manager;


select employee_id,first_name,MOCK_SALCAL(salary,commission_pct) from employees;
select * from Employee_Copy;
update Employee_Copy set salary = 25000 where employee_id = 100;
select * from empoldsal;






