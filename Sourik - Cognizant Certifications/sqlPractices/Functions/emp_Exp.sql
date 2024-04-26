create or replace FUNCTION EMPEXP(empid Number)
RETURN NUMBER AS 
experience number(5,2);
BEGIN
    select round((sysdate-hire_Date)/365,2) into experience 
    from employees where employee_id = empid;
  RETURN experience;
END EMPEXP;
