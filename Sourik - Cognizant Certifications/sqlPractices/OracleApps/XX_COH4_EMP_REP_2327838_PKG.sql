create or replace PACKAGE XX_COH4_EMP_REP_2327838_PKG AS 

  PROCEDURE getEmployeeDetails(errbuff out varchar2,retcode out number,p_designation in varchar2);

END XX_COH4_EMP_REP_2327838_PKG;

create or replace PACKAGE BODY XX_COH4_EMP_REP_2327838_PKG AS

  PROCEDURE getEmployeeDetails(errbuff out varchar2,retcode out number,p_designation in varchar2) AS
  cursor cursor_name is select * from XX_COH4_PROJECT_2327838_TBL where Designation = p_designation;

  BEGIN
  
  ERRBUFF:=NULL;
  RETCODE:=0;

for records in cursor_name  
loop
fnd_file.PUT_LINE(fnd_file.output,'Employeeid: ' || records.Employee_number);
fnd_file.PUT_LINE(fnd_file.output,'First_name: ' || records.First_name);
fnd_file.PUT_LINE(fnd_file.output,'Last_name: ' || records.Last_name);
fnd_file.PUT_LINE(fnd_file.output,'Email : ' || records.Email_address);
fnd_file.PUT_LINE(fnd_file.output,'Position : ' || records.Designation );
fnd_file.PUT_LINE(fnd_file.output,'Year_OF_Birth: ' || records.Year_OF_Birth);
fnd_file.PUT_LINE(fnd_file.output,'Manager : ' || records.Manager );
fnd_file.PUT_LINE(fnd_file.output,'Hiredate  : ' || records.Hire_Date);
fnd_file.PUT_LINE(fnd_file.output,'Enddate  : ' || records.End_Date);
fnd_file.PUT_LINE(fnd_file.output,'Location  : ' || records.Location);
fnd_file.PUT_LINE(fnd_file.output,'Department  : ' || records.Department  );


end loop;


  END getEmployeeDetails;

END XX_COH4_EMP_REP_2327838_PKG;
