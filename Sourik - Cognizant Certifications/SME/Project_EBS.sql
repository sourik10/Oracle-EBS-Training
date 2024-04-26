CREATE TABLE XX_COH4_PROJECT_2327838_TBL (
    Employee_Number NUMBER PRIMARY KEY,
    First_Name VARCHAR2(20),
    Last_Name VARCHAR2(20),
    Email_Address VARCHAR2(30), 
    Designation VARCHAR2(20),
    Year_of_birth DATE,
    Manager VARCHAR2(20),
    Hire_Date DATE,
    End_Date DATE,
    Location VARCHAR2(20),
    Department VARCHAR2(20)
    );
    
    Select * from XX_COH4_PROJECT_2327838_TBL;
    Select * from XX_COH4_PROJECT_2327839_TBL;

    

TRUNCATE TABLE XX_COH4_PROJECT_2327838_TBL;
COMMIT;
SELECT * FROM XX_COH4_PROJECT_2327838_TBL;

CREATE SEQUENCE XX_EMP_2327838_SEQ_PROJECT
START WITH 1000
INCREMENT BY 1
NOCYCLE;

INSERT INTO XX_COH4_PROJECT_2327838_TBL VALUES(
XX_EMP_2327838_SEQ_PROJECT.NEXTVAL,'KHUSHI','CHANDIL','KC@COGNIZANT.COM','PA','22-10-2001','KIRAN KUMAR','11-01-2024','15-04-2024','NOIDA','BANKING');
INSERT INTO XX_COH4_PROJECT_2327838_TBL VALUES(
XX_EMP_2327838_SEQ_PROJECT.NEXTVAL,'SOURIK','PAN','XYZ@COGNIZANT.COM','A','21-11-2000','SMITHA REDDY','15-01-2024','15-06-2024','CHENNAI','MEDIA');
INSERT INTO XX_COH4_PROJECT_2327838_TBL VALUES(
XX_EMP_2327838_SEQ_PROJECT.NEXTVAL,'SOUMIK','GHOSH','UVW@COGNIZANT.COM','SA','15-01-2001','POOJA KUMARI','18-02-2024','21-05-2024','KOLKATA','MANUFACTURING');
INSERT INTO XX_COH4_PROJECT_2327838_TBL VALUES(
XX_EMP_2327838_SEQ_PROJECT.NEXTVAL,'AYUSH','SHARMA','USD@COGNIZANT.COM','M','03-01-2000','SWETA GUPTA','21-02-2024','13-05-2024','BANGALORE','RETAIL');
INSERT INTO XX_COH4_PROJECT_2327838_TBL VALUES(
XX_EMP_2327838_SEQ_PROJECT.NEXTVAL,'SUJAN','GUPTA','WWE@COGNIZANT.COM','SM','11-09-2000','SOUMIK GHOSH','01-03-2024','03-07-2024','PUNE','FINANCE');
 

COMMIT;
SELECT * FROM XX_COH4_PROJECT_2327838_TBL ;
ALTER TABLE XX_COH4_PROJECT_2327838_TBL ADD CONSTRAINT Designation_Check Check (Designation in ( 'PA', 'A', 'SA', 'M', 'SM', 'AD'));
ALTER TABLE XX_COH4_PROJECT_2327838_TBL ADD CONSTRAINT Location_Check Check (Location in ('CHENNAI', 'BANGALORE', 'KOLKATA', 'PUNE', 'HYDERABAD', 
'INDORE', 'NOIDA'
));
ALTER TABLE XX_COH4_PROJECT_2327838_TBL ADD CONSTRAINT Department_Check Check (Department in ('MEDIA', 'COMMUNICATION', 'RETAIL', 'MANUFACTURING', 'BANKING', 
'INDORE', 'FINANCE'
));

ALTER TABLE XX_COH4_PROJECT_2327838_TBL ADD CONSTRAINT hiredate_Check Check (hire_Date between '01-Jan-2024' and '15-Mar-2024'); 
COMMIT;

INSERT INTO XX_COH4_PROJECT_2327838_TBL VALUES(
XX_EMP_2327838_SEQ_PROJECT.NEXTVAL,'SUJAN','GUPTA','WWE@COGNIZANT.COM','SM','11-09-2000','SOUMIK GHOSH','01-03-2023','03-07-2024','PUNE','FINANCE');
 
 
select creation_date from apps.po_headers_all where sysdate-creation_Date <= 30;
select creation_date from  apps.ap_suppliers where sysdate-creation_Date <= 30;

select 
p1.segment1 as "PO Number", p1.type_lookup_code as "PO Type" ,
p2.vendor_name as "Vendor Name" ,p2.creation_Date as "PO Creation Date"
from apps.po_headers_all p1 
join apps.ap_suppliers p2 on p1.segment1  = p2.segment1
where sysdate - p2.creation_Date <= 30;


select distinct type_lookup_code from apps.po_headers_all;

--group by p2.vendor_name;
commit;


SELECT P1.SEGMENT1 AS "PO Number",P1.TYPE_LOOKUP_CODE AS "PO Type",P2.VENDOR_NAME AS "Vendor Name",
P1.CREATION_DATE AS "PO Creation Date" FROM apps.po_headers_all P1 JOIN apps.ap_suppliers P2 ON P1.vendor_id=P2.vendor_id
WHERE SYSDATE-P1.CREATION_DATE<=30;

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

create table apps.stage_table_2327780 (
ORGANIZATION_CODE       VARCHAR2(20),
SEGMENT1                VARCHAR2(20),
DESCRIPTION             VARCHAR2(100),
PRIMARY_UOM_CODE        VARCHAR2(20),
STATUS_FLAG             VARCHAR2(20),
ERROR_MESSAGE           VARCHAR2(200)
);
insert into apps.stage_table_2327780 (ORGANIZATION_CODE,SEGMENT1,DESCRIPTION,PRIMARY_UOM_CODE)
values ('V1','TEST ITEM43','TEST ITEM43','Ea');	
select * from apps.stage_table_2327780;




