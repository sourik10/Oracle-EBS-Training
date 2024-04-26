create or replace FUNCTION Q3_FUNCTION(Empid Number)
RETURN NUMBER 
AS
numberofyears Number(5);
BEGIN
    Select round((sysdate-hire_Date)/365,2) into numberofyears 
    from Employee_Copy4 where Employee_id = Empid;
    
    dbms_output.put_line('Experience: '||numberofyears);
  RETURN numberofyears;
END Q3_FUNCTION;
