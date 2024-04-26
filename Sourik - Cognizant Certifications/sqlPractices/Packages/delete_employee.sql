create or replace PACKAGE DELETE_EMPLOYEE AS 

  PROCEDURE Delete_Employee_Procedure(emp_id Employees.Employee_id%type);

END DELETE_EMPLOYEE;

create or replace PACKAGE BODY DELETE_EMPLOYEE AS

  PROCEDURE Delete_Employee_Procedure(emp_id Employees.Employee_id%type) AS
  BEGIN
  Delete from employee_package where Employee_id = emp_id;
  exception
  when NO_DATA_FOUND then dbms_output.put_line('No records deleted');
  END Delete_Employee_Procedure;

END DELETE_EMPLOYEE;
