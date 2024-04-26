CREATE TABLE apps.tst_supp_data_stg_api_2327838
(vendor_name VARCHAR2(100),
SEGMENT1 VARCHAR2(20),
TERM_ID NUMBER,
VENDOR_CODE VARCHAR2(20),
STATUS_FLAG VARCHAR2(20),
ERROR_MESSAGE VARCHAR2(200)
);

insert into apps.tst_supp_data_stg_api_2327838 (vendor_name,SEGMENT1,TERM_ID,VENDOR_CODE)
values ('SP_API INV1','14573',10174,'VENDOR');

insert into apps.tst_supp_data_stg_api_2327838 (vendor_name,SEGMENT1,TERM_ID,VENDOR_CODE)
values ('SP_API INV100','14573',10174,'VENDOR');
commit;

insert into apps.tst_supp_data_stg_api_2327838 (vendor_name,SEGMENT1,TERM_ID,VENDOR_CODE)
values ('SP_DK INV2','14573',10174,'VENDOR');
commit;

select * from apps.tst_supp_data_stg_api_2327838;

--interface table
select * from apps.ap_suppliers_int WHERE vendor_name='SP_API INV100';
--base table
select * from apps.ap_Suppliers where vendor_name = 'SP_API INV100';
--payabales manger --> supplier open interface program


select name from apps.tk_Database;
select * from v$parameter where name like 'utl%';

--order report
 SELECT   header_id, org_id, order_number, ordered_date,
                  request_date
             FROM apps.oe_order_headers_all a
            WHERE org_id = 81
              AND flow_status_code = 'BOOKED'
              AND ordered_date BETWEEN SYSDATE - 3000 AND SYSDATE
         ORDER BY ordered_date DESC;
    
select distinct flow_Status_Code from  apps.oe_order_headers_all;


--po report
SELECT ph.segment1 po_num, ph.type_lookup_code po_type,
                TO_CHAR (ph.creation_date, 'DD-MON-RR') po_date,
                ap.vendor_name supplier_name, ppf.full_name buyer_name
           FROM apps.po_headers_all ph, apps.ap_suppliers ap, apps.per_all_people_f ppf
          WHERE 1 = 1
            AND ph.vendor_id = ap.vendor_id
            AND ph.agent_id = ppf.person_id
            AND ph.authorization_status = 'APPROVED'
            AND ph.creation_date BETWEEN SYSDATE - 10 AND SYSDATE;

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









