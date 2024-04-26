create or replace PACKAGE pkcustomer as 
    PROCEDURE findcustomerorder(norder_id in Orders_mock.Order_id%type);
    end pkcustomer;

create or replace PACKAGE body pkcustomer as 
    PROCEDURE findcustomerorder(norder_id in Orders_mock.Order_id%type) as 
    v_customername Customers_mock.Customer_name%type;
    v_orderamount Orders_mock.order_Amount % type;
    v_orderdate Orders_mock.ORDER_dATE%type;
    begin
    Select c.Customer_name,o.order_Amount,o.ORDER_dATE into v_customername,v_orderamount,v_orderdate
    from Customers_mock c join Orders_mock o on c.customer_id = o.customer_id
    where o.Order_id = norder_id;
    dbms_output.put_line(v_customername||' has ordered for Rs.'||v_orderamount||'on '|| to_char(v_orderdate,'DD-MM-YYYY'));
    
    exception
    when NO_DATA_FOUND then dbms_output.put_line('No Customer Found');
    end findcustomerorder;
    end pkcustomer;
