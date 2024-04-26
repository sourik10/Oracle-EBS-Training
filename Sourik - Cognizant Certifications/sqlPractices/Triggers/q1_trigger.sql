create or replace TRIGGER Q1_TRIGGER 
AFTER DELETE ON Employee_trigger1
referencing old as o new as n
for each row
BEGIN
  Insert into X_emp Values (:o.Employee_id ,:o.First_name ,:o.department_id ,sysdate());
  IF deleting THEN dbms_output.put_line('Records inserted seccessfully');
 end if;
END;
