create or replace FUNCTION Q2_FUNCTION (dept_id Number)
RETURN VARCHAR2 
AS 
finalOutput VARCHAR2(100);
BEGIN
--
    Select D.department_name ||'-'|| L.city ||'-'|| C.country_name  into finalOutput
    from Departments_Copy D join Locations L on D.location_id = L.location_id
    join Countries C on L.country_id = C.country_id where D.department_id = dept_id;  
    
     dbms_output.put_line(finalOutput);
    
  RETURN finalOutput;
END Q2_FUNCTION;
