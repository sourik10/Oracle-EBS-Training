create or replace FUNCTION REVERSE_NUMBER(x number)
RETURN NUMBER AS 
revNumber number;
BEGIN
  select (reverse(to_char(x))) into revNumber
  from dual;
  RETURN revnumber;
END REVERSE_NUMBER;
