create or replace FUNCTION CHARACTER_COUNT(Str VARCHAR2)
RETURN NUMBER AS 
countCharacter number := 0;
l number := length(str);
BEGIN
    for i in 1..l loop
    if substr(str,i,1) <> ' ' then countCharacter := countcharacter + 1;
    end if;
    end loop;
  RETURN countcharacter;
END CHARACTER_COUNT;
