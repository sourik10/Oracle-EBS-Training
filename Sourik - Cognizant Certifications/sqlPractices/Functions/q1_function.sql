create or replace FUNCTION Q1_FUNCTION (Emp_id in Number)
RETURN VARCHAR2 AS 
FullName VARCHAR2(100);
BEGIN
    Select 'Mr/Mrs. '|| First_name ||' '|| Last_name into FullName
    from employee_copy4 where Employee_id = Emp_id;
    
    dbms_output.put_line(FullName);
  RETURN FullName;
END Q1_FUNCTION;
