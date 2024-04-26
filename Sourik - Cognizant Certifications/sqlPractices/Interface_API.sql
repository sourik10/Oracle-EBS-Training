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
values ('SP_DK INV2','14573',10174,'VENDOR');
commit;

select * from apps.tst_supp_data_stg_api_2327838;

--interface table
select * from apps.ap_suppliers_int WHERE vendor_name='SP_API INV1';
--base table
select * from apps.ap_Suppliers where vendor_name = 'SP_DK INV2';
--payabales manger --> supplier open interface program


--select name from apps.tk_Database;
