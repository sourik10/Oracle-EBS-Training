create or replace PACKAGE PKG_SAL_PROCESS AS 

  PROCEDURE sal_cal(v_month varchar2);
  PROCEDURE bank_sta (v_month varchar2);

END PKG_SAL_PROCESS;

create or replace PACKAGE BODY PKG_SAL_PROCESS AS

  PROCEDURE sal_cal(v_month varchar2) AS
  
  v_empid number;
  v_months varchar2(5);
  v_Salary number;
  v_preday number;
  b_Sal number;
  cursor c1 is select e.empid,a.month,e.salary,a.pre_day from emp55 e inner join empattendance a on e.empid = a.empid
  where a.month = v_month;
  BEGIN
    open c1;
    loop
    fetch c1 into v_empid,v_months,v_salary,v_preday;
    exit when c1%notfound;
    b_Sal := v_Salary * 0.5;
    if v_preday = 31 then  b_Sal := b_Sal;
    else b_Sal := (b_Sal / 31) * v_preday;
    end if;
    
    insert into empsal values (v_empid,v_month,round(b_Sal),v_salary*0.2 ,v_salary*0.05 , v_Salary * 0.05,v_salary*0.2);
    end loop;
    close c1;
    NULL;
  END sal_cal;

  PROCEDURE bank_sta (v_month varchar2) AS
  v_Acno number;
  v_name varchar2(20);
  v_amount number;
  v_credit_date date := '01-02-2024';
  t_sal number;
  cursor c2 is select b.ac_no ,b.empname, (e.basic_Sal + e.hra  + e.ca + e.ma + e.da)
    from empbank b join empsal e on b.empid = e.empid where e.month = v_month;
  BEGIN
  open c2;
  loop
  fetch c2 into v_Acno,v_name,v_amount;
  exit when c2%notfound;
    if v_amount > 15000 then
        t_sal := round(v_amount-(v_amount*0.1));
    elsif v_amount between 10000 and 15000 then
        t_sal := round(v_amount-(v_amount*0.06));
    elsif v_amount between 7000 and 9999 then
        t_sal := round(v_amount-(v_amount*0.03));
    else
        t_sal := round(v_amount);
    end if;
    insert into BANKSTATEMENT values(v_Acno,v_name,t_sal,v_credit_date);
  end loop;
  close c2;
  END bank_sta;

END PKG_SAL_PROCESS;
