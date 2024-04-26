create or replace PROCEDURE Q2_PROCEDURE (V_id in employeecopy.department_id%type)
AS 
DeptIDNotFound EXCEPTION;
BEGIN
    Delete from Employeecopy where department_id = v_id;
    if(sql%found) then dbms_output.put_line(sql%rowcount || 'records were deleted');
    else raise DeptIDNotFound;
    end if;
    
    EXCEPTION 
    when DeptIDNotFound then dbms_output.put_line('no records were deleted');
  
END Q2_PROCEDURE;
