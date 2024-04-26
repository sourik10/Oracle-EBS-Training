create or replace PACKAGE PKG_DEPT_INFO AS 
    PROCEDURE EmpCount;
    PROCEDURE SalDept;
END PKG_DEPT_INFO;

create or replace PACKAGE body PKG_DEPT_INFO AS 

    PROCEDURE EmpCount 
    AS
    v_deptname Departments.Department_name%type;
    v_count number;
    
    cursor c1 is select d.department_name,count(e.employee_id)
    from employees e join departments d 
    on e.department_id = d.department_id 
    group by department_name;
    begin 
    
    open c1;
    loop 
    fetch c1 into v_deptname,v_count;
    exit when c1%notfound;
    DBMS_OUTPUT.PUT_LINE(v_deptname ||'-'||v_count);
    end loop;
    close c1;
    
    end EmpCount;
    
--    departmentname, total_salary  and average_salary of each 		departments
    PROCEDURE SalDept as
    v2_deptname Departments.department_name%type;
    v2_totalsalary number;
    v2_avgsalary number;
    
    cursor c1 is select d.department_name,sum(e.salary),avg(e.salary)
    from departments d join employees e on d.department_id = e.department_id
    group by d.department_name;
     begin
    open c1;
    loop 
    fetch c1 into v2_deptname,v2_totalsalary,v2_avgsalary;
    exit when c1%notfound;
    DBMS_OUTPUT.PUT_LINE(v2_deptname ||'-'||v2_totalsalary||'-'||v2_avgsalary);
    end loop;
    close c1;
    End SalDept;
    
END PKG_DEPT_INFO;
