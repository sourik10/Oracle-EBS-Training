--create table apps.Stage_table123( empid  number (10) , salary number(6));
--select * from apps.stage_table123;

select * from apps.stage_table;
select * from apps.inv_ex_stg;
desc apps.stage_table;

create table apps.stage_table_2327838 (
ORGANIZATION_CODE       VARCHAR2(20),
SEGMENT1                VARCHAR2(20),
DESCRIPTION             VARCHAR2(100),
PRIMARY_UOM_CODE        VARCHAR2(20),
STATUS_FLAG             VARCHAR2(20),
ERROR_MESSAGE           VARCHAR2(200)
);

insert into apps.stage_table_2327838 (ORGANIZATION_CODE,SEGMENT1,DESCRIPTION,PRIMARY_UOM_CODE)
values ('V1','SP ITEM1','SP ITEM1','Ea');	
insert into apps.stage_table_2327838 (ORGANIZATION_CODE,SEGMENT1,DESCRIPTION,PRIMARY_UOM_CODE)
values ('B1','SP ITEM2','SP ITEM2','Ea');
COMMIT;
select * from apps.stage_table_2327838 ;
insert into apps.stage_table_2327838 (ORGANIZATION_CODE,SEGMENT1,DESCRIPTION,PRIMARY_UOM_CODE)
values ('B1','SP ITEM3','SP ITEM3','Ea');	

insert into apps.stage_table_2327838 (ORGANIZATION_CODE,SEGMENT1,PRIMARY_UOM_CODE)
values ('V1','TEST ITEM22','Ea');
delete from apps.mtl_System_items_interface where SEGMENT1 = 'SP ITEM2';

ROLLBACK;
commit;
select * from apps.stage_table_2327838;
truncate table apps.stage_table_2327838;


select * from apps.mtl_System_items_interface where SEGMENT1 = 'SP ITEM2';
select transaction_id,process_flag from apps.mtl_System_items_interface where SEGMENT1 = 'SP ITEM1' ;

select * from apps.mtl_interface_Errors where transaction_id= 102733;


commit;
--select * from apps.mtl_System_items_interface where SEGMENT1 = 'TEST ITEM99';
select * from apps.mtl_System_items_B where SEGMENT1 = 'TEST ITEM99';

select * from apps.mtl_System_items_B where SEGMENT1 = 'SP ITEM2';
select * from apps.mtl_System_items_B where SEGMENT1 = 'SP ITEM1';

select * from apps.mtl_System_items_B where ORGANIZATION_ID='4064' ;
--and CREATION_DATE = '28-Mar-2024';


update apps.stage_table_2327838 set segment1 ='TEST ITEM99' where description ='TEST ITEM99';
commit;




select * from apps.mtl_System_items_interface;








