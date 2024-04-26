create or replace FUNCTION REVERSE_STRING(S1 VARCHAR2)
RETURN VARCHAR2 AS
S2 VARCHAR2(20);
BEGIN
--    for i in 1..length(s1) 
--    loop
--    S2 := S2 || substr(S1,-i,1);
--    end loop;
    
    for i in REVERSE 1..length(s1) 
    loop
    S2 := S2 || substr(S1,i,1);
    end loop;
  RETURN S2;
END REVERSE_STRING;
