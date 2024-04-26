create or replace PROCEDURE Q1_PROCEDURE as
    cursor c1 is select d.department_id,d.department_name,d.location_id from departments d join locations l 
    on d.location_id = l.location_id where l.country_id = 'US';    
    v_row c1% rowtype;

BEGIN   
    open c1;
    loop 
    fetch c1 into v_row;
    exit when c1%notfound;
    insert into department_us values (v_row.department_id,v_row.department_name,v_row.location_id);
    end loop;
    
    if(c1%notfound)then 
        dbms_output.put_line(c1%rowcount || 'rows updated');
    else 
        dbms_output.put_line('No records updated');
    end if;
    
    close c1;
  
END Q1_PROCEDURE;
