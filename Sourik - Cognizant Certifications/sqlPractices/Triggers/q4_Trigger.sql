create or replace TRIGGER Q4_TRIGGER 
AFTER UPDATE ON Employee_trigger4
REFERENCING old as o new as n
for each row
BEGIN
    insert into empoldsal values(:o.employee_id , :o.first_name ,:o.salary);
    IF UPDATING THEN dbms_output.put_line('Record is inserted into empoldsal');
    end if;
END;
