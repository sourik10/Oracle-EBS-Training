select * from apps.oe_order_headers_all where order_number = 69505;

select * from apps.oe_order_lines_All where header_id = 385942;
select distinct flow_status_code from apps.oe_order_headers_All;

select flow_status_code from apps.oe_order_headers_all where order_number = 69505;
select   flow_status_code from apps.oe_order_lines_All where header_id = 385942;

select *  from apps.ra_customer_trx_All where trx_number = '1000002';
select *  from apps.ra_customer_trx_lines_All where customer_trx_id = '906933';
select * from apps.ar_cash_receipts_All;

--o2c process -> 
--enter order
--book order 
--pick release
--ship confirm
--invoice 
--receipt 
