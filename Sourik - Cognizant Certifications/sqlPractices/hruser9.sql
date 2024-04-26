select * from employee_copy4;
create view v1 as select employee_id,first_name,salary from Employee_copy4;
select * from v1;

select * from v1;
create table empDummy as select * from employee_copy4;
select * from empDummy;
execute drop_object('Table','empDummy');
select * from empDummy;

set SERVEROUTPUT ON;
declare
sqlQuery varchar2(100);
totalEmployee number;
begin
 sqlQuery := 'select count(*) from employee_copy';
 execute immediate sqlquery into totalEmployee;
 dbms_output.put_line('total employees: '||totalEmployee);
end;

--select count(*) from employee_Copy;

--create table Classroom (Name VARCHAR2(30), Roll Number(5) , Phone_NO Number(10));
--select * from classroom;

set serveroutput on;
declare
ddl_query varchar2(100);
begin
    ddl_query := 'create table Classroom(Name VARCHAR2(30), Roll Number(5) , Phone_NO Number(10))';
    execute immediate ddl_query;
end;

set serveroutput on;
declare
ddl_query varchar2(100);
begin
    ddl_query := 'alter table classroom add Location Varchar2(30)';
    execute immediate ddl_query;
end;

select * from classroom;

set serveroutput on;
declare
sql_entry VARCHAR2(100);
begin
sql_entry := 'insert into classroom values (''Soumik'',007,9876543210,''Chennai'')';
execute immediate sql_entry ;
end;

select * from classroom;



