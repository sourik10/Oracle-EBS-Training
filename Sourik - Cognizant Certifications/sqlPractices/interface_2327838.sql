--stag table creation
CREATE TABLE apps.tst_supp_data_stg_2327838
(vendor_name VARCHAR2(100),
SEGMENT1 VARCHAR2(20),
TERM_ID NUMBER,
VENDOR_CODE VARCHAR2(20),
STATUS_FLAG VARCHAR2(20),
ERROR_MESSAGE VARCHAR2(200)
);

insert into apps.tst_supp_data_stg_2327838 (vendor_name,SEGMENT1,TERM_ID,VENDOR_CODE)
values ('SP INV1','14573',10174,'VENDOR');
insert into apps.tst_supp_data_stg_2327839 (vendor_name,SEGMENT1,TERM_ID,VENDOR_CODE)
values ('KC INV1','14573',10174,'VENDOR');
COMMIT;

drop table apps.tst_supp_data_stg_2327838;
rollback;

select * from apps.tst_supp_data_stg_2327838;
--tst_supp_data_stg

select * from apps.tst_supp_data_stg_2327839;

truncate table apps.tst_supp_data_stg_2327839;


commit;
SELECT * FROM APPS.AP_TERMS;
select * from apps.tst_supp_data_stg_2327839;

--interface table
select * from apps.ap_suppliers_int WHERE vendor_name='SP INV1';
--base table
select * from apps.ap_Suppliers where vendor_name = 'SP INV1';
--payabales manger --> supplier open interface import

--interface
--base
