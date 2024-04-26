create or replace FUNCTION Q4_FUNCTION(v_sal Number,v_com Number)
RETURN NUMBER 
AS 
updatedsalary Number := 0;
BEGIN
    if v_Com is null then 
        updatedsalary := updatedsalary + v_sal;
    else 
        updatedsalary := updatedsalary + ((v_sal * v_Com) /100) ;
    end if;
        
    if updatedsalary >= 15000 then
        updatedsalary := updatedsalary - ((updatedsalary * 6) /100) ;
    elsif updatedsalary < 15000 then 
        updatedsalary := updatedsalary - ((updatedsalary * 2.5) /100) ;
    end if;
    
     RETURN updatedsalary;

--    Update Employee_function set 
--    Update employee_copy4 Set Salary = Salary * (1+v_com - 0.06) into updatedsalary
--    where Salary >= 15000;
----    Update employee_copy4 Set Salary = Salary * (1+v_com - 0.025) into updatedsalary
----    where Salary < 15000;
    
--    dbms_output.put_line(updatedSalary);
    
 
END Q4_FUNCTION;
