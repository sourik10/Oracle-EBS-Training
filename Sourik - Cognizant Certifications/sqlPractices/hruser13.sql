create or replace function sumF(a in number ,b in number)
return number
as 
--sum number(6);
begin
    sum := a+b;
    return sum;
end;
/

select SUMFUNCTION(9,7) from dual;
select * from dual;

CREATE TABLE C1(
  Roll_No INT PRIMARY KEY,
  Name VARCHAR(50));

CREATE TABLE C2(
  Roll_No INT PRIMARY KEY,
  Marks INT);
--Insert the value in the Student table

  INSERT INTO C1 VALUES
  (1,'Mohit'),
  (2,'Aman'),
  (3,'Sachin'),
  (4,'Manish');
  