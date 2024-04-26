create or replace PROCEDURE Q3_PROCEDURE AS 
BEGIN
  Update Employee_Copy Set Salary = Salary * 1.22 where job_id = 'IT_PROG';
  
  if(sql%found) then dbms_output.put_line(sql%rowcount || ' Number of Employees');
  else dbms_output.put_line('No records updated');
  end if;
  
END Q3_PROCEDURE;
