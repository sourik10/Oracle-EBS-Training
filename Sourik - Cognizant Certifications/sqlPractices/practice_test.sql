create table Employee_Sourik( Firstname varchar2(30), Salary Number(10), Location Varchar2(30));
alter table Employee_Sourik add Employee_id number(10);
alter table Employee_Sourik modify Location varchar2(100);
alter table Employee_Sourik rename to Employee_S;
alter table Employee_S rename column Employee_id to EmpID;
desc Employee_S;
alter table Employee add PRIMARY KEY(EmpId);


create table Employee_Soumik( Employee_number number(10)PRIMARY KEY,Firstname varchar2(30), Salary Number(10), Location Varchar2(30));
desc Employee_Soumik;
 
insert into  Employee_soumik values(101,'Soumik',9999,'kolkata');
commit;

insert all
into Employee_soumik values(102,'Sourik',9999,'kolkata')
into Employee_soumik values(103,'Ayandip',9999,'kolkata');
select * from dual;

alter table Employee_soumik add constraint e_check check (Employee_number between 100 and 200);
insert into  Employee_soumik values(201,'Kiran',9999,'kolkata');
select * from Employee_soumik;
commit;

create or replace procedure p_name(Empid in number)
as
    cursor c is select * from Employee_Soumik where Employee_number = Empid;
    rowVal Employee_Soumik%rowtype;
begin

    open c;
    loop
    fetch c into rowval;
    exit when c%notfound;
    dbms_output.put_line(rowval.Employee_number || ' ' || rowval.firstname || ' '||rowval.location);
    end loop;
    close c;
    
end;
/
execute p_name(101);

create or replace procedure p_salary(Empid in number)
as
v_Sal Employee_soumik.salary%type;
begin
    select salary+100 into v_sal from Employee_Soumik
    where Employee_number = Empid;
    
    dbms_output.put_line(v_sal);
end;

exec p_Salary(101);

create or replace function f_salary(Empid in number)
return number
as
salary_total Employee_Soumik.Salary%type;
begin 
--    update Employee_Soumik set salary = salary + 500 into salary_total
    select salary + 990  into salary_total from Employee_Soumik
    where Employee_number = empid;
    return salary_total;
end;
select f_salary(101) from dual;


update Employee_Soumik set salary = salary + 500;
commit;

select * from Employee_soumik;

select max(salary) from Employee_soumik where salary <( select max(Salary) from Employee_Soumik);

create table dummySoumik (dateToday date);

create or replace trigger t1 
after delete on Employee_soumik
for each row
begin
    if deleting then 
    insert into dummySoumik values (old.sysdtate);
    dbms_output.put_line('Trigger event');
    end if;
end;



create or replace procedure p_exception(v_Sal Employee_soumik.salary%type)
as
e1 exception;

begin
if(v_Sal > 10000) then
    dbms_output.put_line('>10000');
else if (v_Sal > 5000) then     dbms_output.put_line('>5000');
else raise e1;
end if;

exception
when e1 then dbms_output.put_line('Exception raised');
end;
update employee_soumik set salary = salary + 5000 where employee_number = 103;
commit;
select * from employee_soumik;

create or replace proceudure p_out(Empid in number , p_ten out number )
as 
v_Salary  number(10);
begin
    select salary into v_Salary 
    from employee_Soumik where employee_number = empid;
    p_ten := v_Salary * 0.1;
end;

set serveroutput on;
declare 
temp_var varchar2(30) := 'Sourik';
create or replace procedure proct(tmp_v in out varchar2)
as 
begin
    dbms_output.put_line(tmp_v);
    tmp_v := 'titli';
end;


begin
exec proct(temp_v);
--dbms_output.put_line(temp_var);
end;








declare
  l_val varchar2(30) := 'hello world';
  procedure myproc (p_val in out varchar2) is
  begin
    dbms_output.put_line('p_val was ' || p_val);
    p_val := 'something else';
  end;
begin
   myproc(l_val);
   dbms_output.put_line(l_val);
end;
/

p2p cycle
1.requisition ( purchase req , internal req)
po_requisition_headers_All;
po_requisition_lines_All;
po_req_distribution_All;

2.rfq

3.quotation

4.po placed ( standard , planned, blanket, contract)
po_headers_All;
po_lines_All;
po_distribution_All;

5.send items to inventory

6.receipt send to finance
rcv_Shipment_headers
rcv_shipment_lines

7.invoice send 
ap_invoices_All
ap_invoices_lines_All

6.payments
ap_bank_branch

7.transfer to gl
gl_je_headers
gl_je_lines
gl_je_batches

modules involved
inventory mgmt module
purchase order module
account payables(Ap)
general ledger(gl)

-------------------------------------------------------------------------------------
o2c 
1.enter the sales order
oe_order_headers_all;
or_order_lines_All;
flow_Status_Code ='Entered'; (both tables)

2.booking the sales order
oe_order_headers_all; flow_Status_Code ='booked'; 
or_order_lines_All; flow_Status_Code ='awaiting shipping'; 
 wsh_delivery_items -> release_Status ='R'(ready to release)

--select * from apps.wsh_delivery_Assignments;
3.pick up release
wsh_delivery_Assignments;

4.ship confirmed
oe_order_headers_all; flow_Status_Code ='booked'; 
or_order_lines_All; flow_Status_Code ='shipped'; 
 wsh_delivery_items -> release_Status ='C'(Confirmed for delivery)
 
5.invoices generated
ra_customers_trx_All;
ra_Customers_trx_lines_All;

6.receipt(against invoice)
ar_cash_Receipts_All;

7.transfer to gl_interface
gl_interface

8.journal import
gl_je_headers
gl_je_lines
gl_je_batches

9.posting
--finally it is updated to the gl module to update the account balances 

alter table employee_soumik rename to emp_exam;
alter table emp_exam modify salary number(20); 
desc emp_Exam;

create table dept_Exam ( dept_id varchar2(10) primary key,
                        dept_name varchar2(30) ,
                        emp_number number(10),
                        foreign key (emp_number) references emp_Exam(employee_number)
                        );
alter table dept_exam add subject_name varchar2(20);
alter table dept_exam rename to d_exam;
alter table d_exam rename column emp_number to e_num;

---------------------------------------------------------------------
conversion
flat file -> stage table -> inetface table -> base table
inventory vision operation(usa)   -> import items (cp)

interface 
flat file -> stage table -> inetface table -> base table
payables manager -> supplier open interface import

interface(api)
flat file -> stage table -> base table
api call -> ap_vendor_pub_pkg ( p_version , p_int_msg_list , p_commit )
fnd_api.g_true (oracle seeded api)

outbound interface
-> extract of data from oracle database into the flat files
-> utl_file ( a package used to for extraction of data from oracle db to flat file)

process
develop plsql program
open the cursor 
open the file using utl_file package
fetch data using cursor
close the file using utl_file package
close cursor
compile plsql program
create executable and concurrent program
run in reuqired responsibility
----------------------------------------------------------------------------------------



