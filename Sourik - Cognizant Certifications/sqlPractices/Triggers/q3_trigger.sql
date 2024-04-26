create or replace TRIGGER Q3_TRIGGER 
AFTER UPDATE ON Employee_trigger3
REFERENCING old as o new as n
for each row
BEGIN
    insert into empoldsal values(:o.employee_id , :o.first_name ,:o.salary);
    IF UPDATING THEN dbms_output.put_line('Records inserted seccessfully');
    end if;
END;
