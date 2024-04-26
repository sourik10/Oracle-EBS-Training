create or replace PROCEDURE Q4_PROCEDURES AS 
BEGIN
  Update Employee_Copy4 Set Salary = 8000 where salary < 8000;
  
  if(sql%found) then dbms_output.put_line('Salary Hike is successful');
  else dbms_output.put_line('Salary is greater than 8000');
  end if;
END Q4_PROCEDURES;
