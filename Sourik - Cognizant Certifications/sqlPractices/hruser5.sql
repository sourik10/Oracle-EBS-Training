select employee_id,salary from employees
order by salary ; 
--24k,17l,14k,13.5k,13k
-- 2.1k,2.2k,2.4k,2.5k

select department_id,salary from employees 
order by department_id desc;

select department_id,max(salary) from employees
group by department_id;

select employee_id,max(salary) as salary from employees
where salary < (select max(salary) from employees)
group by employee_id; 

SELECT employee_id , MAX(salary) AS salary
FROM employees
WHERE salary < (SELECT MAX(salary) 
                 FROM employees
                 WHERE salary < (SELECT MAX(salary)
                 FROM employees)
                )
group by employee_id; 

select department_id,max(Salary) from employees 
where salary < (select max(salary) from employees where salary < (select max(salary) from employees))
group by department_id;



select job_id,sum(salary) from employees group by job_id 
having sum(salary) >= ALL (select sum(salary)  from employees group by job_id);

--SA_REP	250500

--4) Display the jobid and number of employees as No_Emps. 
--display only  the jobId which has maximum no_emps number employees  sort record based on job_id 
select job_id, count(employee_id) as No_Emps from employees group by job_id 
HAVING count(employee_id) >= ALL  (select count(employee_id) as No_Emps from employees group by job_id);


select dept_id, sum(Salary) from employee_package 
group by dept_id ;

select salary from employees;
select max(Salary) from employees;
select max(Salary) from employees where salary < (select max(Salary) from employees);

select max(Salary) from employees where salary < (select max(Salary) from employees where salary < (select max(Salary) from employees));



select min(Salary) from employees where salary > (select min(Salary) from employees);

select job_id,sum(salary) from employees group by job_id
having sum(Salary) >= all (select sum(salary) from employees group by job_id);



select salary from employees order by salary 
select min(Salary) from employees where salary > (select min(Salary) from employees where salary > (select min(Salary) from employees));

