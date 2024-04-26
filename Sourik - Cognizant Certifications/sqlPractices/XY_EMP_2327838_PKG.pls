CREATE OR REPLACE
PACKAGE BODY XY_EMP_2327838_PKG AS

cursor c is select * from XY_COH4_BATCH_EMP_2327838;
  PROCEDURE XYEBS_PROCEDURE(errbuff out varchar2,retcode out number) AS
  BEGIN
for records in c 
loop

--dbms_output.put_line('Employeeid: ' || records.Employee_number);
--dbms_output.put_line('First_name: ' || records.First_name);

fnd_file.PUT_LINE(fnd_file.output,'Employeeid: ' || records.Employee_number);
fnd_file.PUT_LINE(fnd_file.output,'First_name: ' || records.First_name);
fnd_file.PUT_LINE(fnd_file.output,'Last_name: ' || records.Last_name);
fnd_file.PUT_LINE(fnd_file.output,'Email : ' || records.Email );
fnd_file.PUT_LINE(fnd_file.output,'Position : ' || records.Position );
fnd_file.PUT_LINE(fnd_file.output,'Year_OF_Birth: ' || records.Year_OF_Birth);
fnd_file.PUT_LINE(fnd_file.output,'Manager : ' || records.Manager );
fnd_file.PUT_LINE(fnd_file.output,'Hiredate  : ' || records.Hiredate );
fnd_file.PUT_LINE(fnd_file.output,'Enddate  : ' || records.Enddate );
end loop;
  END XYEBS_PROCEDURE;

END XY_EMP_2327838_PKG;