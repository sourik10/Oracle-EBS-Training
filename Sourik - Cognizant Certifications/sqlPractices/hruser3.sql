-- Q1
select employee_id,first_name,job_id from Employees
where (salary + ((salary * commission_pct)/100)) > 12000 and commission_pct is not null
order by employee_id;

-- Q2
select d.department_name from employees e join departments d on e.department_id = d.department_id
group by d.department_name having count(e.employee_id) >= 10;

-- Q3
select d.department_name,e.first_name,e.last_name,l.city 
from departments d join employees e 
on d.department_id = e.department_id 
join locations l on d.location_id = l.location_id
where e.manager_id = e.employee_id ;

-- Q4
select employee_id,first_name,job_id,salary, 
case 
    when salary > 20000 then salary*0.90
    when salary >= 15000 and salary <= 20000 then salary * 0.92
    when salary >= 10000 and salary <= 14999 then salary * 0.94
    when salary >= 8000 and salary <= 9999 then salary * 0.96
    when salary >= 5000 and salary <= 7999 then salary * 0.98
    else salary
end as net_salary 
from employees;

--Q5
select e.employee_id, e.first_name, e.last_name ,concat(concat(d.department_id,'-'),d.department_name) as Dept
from employees e join departments d
on e.department_id = d.department_id 
order by e.department_id asc,e.salary desc;

--Q6
select e.first_name , e.last_name , d.department_name , l.city , l.state_province
from employees e join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id
where e.first_name like '%z%' or e.first_name like 'z%' or e.first_name like '%z'
order by e.first_name;

----Q7) write a SQL query to find the employees and their managers. 
--These managers do not work under any manager.
--Return the first name of the employee and manager.
select a.first_name as employee_name ,b.first_name as manager_name from employees a join employees b
on a.manager_id = b.employee_id and b.manager_id is null;

--Q8
select* from employees;
select e.employee_id,e.first_name,e.last_name,j.job_title,d.department_name from employees e join jobs j on e.job_id = j.job_id
join departments d on e.department_id = d.department_id
where e.hire_Date between '01-01-05' and '31-01-06' ;

--Q9
select e.employee_id,e.first_name,e.last_name,j.max_salary - e.salary  as Salary_Difference 
from employees e join jobs j on e.job_id = j.job_id 
order by employee_id ;

--select * from employees where employee_id = 100;
--10)  write a SQL query to calculate the average salary of employees for each job title.
select j.job_title,avg(e.salary) from employees e join jobs j on e.job_id = j.job_id 
group by j.job_title;

--11) write a SQL query to find all departments, including those without employees. Return first name, last name, department ID, department name
select e.first_name,e.last_name,d.department_id,d.department_name
from employees e join  departments d on e.department_id = d.department_id ;\

--12) write a SQL query to find the employees and their managers. Return the first name of the employee and manager's first_name and sort the record based on employee_id.
select a.first_name,b.first_name from employees a join employees b on a.manager_id = b.employee_id ;

--select * from employees where first_name = 'Ellen';
--13) Write a SQL query to display the department name, city, and state province for each department. 

select d.department_name, l.city,l.state_province 
from departments d join locations l on d.location_id = l.location_id;


--14
select e.employee_id,e.first_name,e.last_name,e.department_id,d.department_name
from employees e join departments d on e.department_id = d.department_id 
where d.department_id is null ;

--15
select employee_id,first_name,hire_Date,job_id,department_id 
from employees where (salary + ((salary * commission_pct)/100)) > 12000 
order by employee_id;

--16
select employee_id,first_name,salary as NetSalary
from employees where (salary + ((salary * commission_pct)/100)) > 15000 
order by employee_id;

--17
select employee_id,first_name, job_id,
case 
    when salary > 20000 then salary*0.10
    when salary >= 15000 and salary <= 20000 then salary * 0.08
    when salary >= 10000 and salary <= 14999 then salary * 0.06
    when salary >= 8000 and salary <= 9999 then salary * 0.04
    when salary >= 5000 and salary <= 7999 then salary * 0.02
    else salary* 0.00
end as tax_amount
from employees;

--18
select employee_id ,first_name,job_id,
case 
    when commission_pct is null then salary
    else (salary + ((salary * commission_pct)/100)) 
end
as GROSS_SALARY
from employees ;

--19
select e.manager_id,d.department_name,e.first_name,e.last_name ,l.city
from Departments d join employees e on d.department_id = e.department_id
join locations l on d.location_id = l.location_id
group by e.manager_id having count(e.employee_id) > 5;

--20
select e.employee_id, e.first_name, e.job_id , d.department_name,round((sysdate - e.hire_Date)/365,2)
from employees e join departments d on e.department_id = d.department_id
where (sysdate - e.hire_Date) > 15;

--21

select department_id, round(avg(salary),2) , count(employee_id) as No_of_emp
from employees 
where commission_pct > 0 and department_id is not null
group by department_id 
order by count(employee_id) desc;

--22
select c.country_name,l.city,d.department_name 
from countries c join locations l on c.country_id = l.country_id 
join departments d on l.location_id = d.location_id ;

--23
select distinct a.first_name,a.last_name,d.department_name  from employees a join employees b 
on a.employee_id = b.manager_id join departments d join employees a on d.department_id = a.department_id;

--24
select job_id, sum(Salary) as Total_Salary from employees 
group by job_id having sum(Salary) > 50000;

--25
select job_id, sum(salary) as sumMaxSalary from employees
group by job_id 
    HAVING SUM(SALARY) >= ALL  (select sum(salary) as 
    sumMaxSalary from employees 
    group by job_id);

--26
select e.first_name, e.last_name, d.department_name, l.city,l.state_province
from employees e join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id 
order by e.employee_id;

--28
select e.department_id ,d.department_name,j.job_title,avg(e.salary)
from employees e join jobs j 
on e.job_id = j.job_id
join departments d 
on e.department_id = d.department_id 
group by e.department_id ,d.department_name,j.job_title
order by e.department_id ;

--29
select employee_ID,first_name, Hire_date, job_ID,department_ID
from employees where salary >= 12000;

--30
select e.employee_id,e.first_name, e.last_name, e.department_id, d.department_name
from employees e join departments d on e.department_id = d.department_id;