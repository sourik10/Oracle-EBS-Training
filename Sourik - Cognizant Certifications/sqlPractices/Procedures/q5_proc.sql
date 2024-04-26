create or replace PROCEDURE Q5_DEPTCOUNT(LocationNo Number)
AS 
    v_countDeptid number;
    
BEGIN

    Select count(Department_id) into  v_countDeptid 
    From departments_copy 
    where Location_id = LocationNo;
    dbms_output.put_line('Number of Department in location id ' || Locationno ||'is ' || v_countdeptid);

END Q5_DEPTCOUNT;
