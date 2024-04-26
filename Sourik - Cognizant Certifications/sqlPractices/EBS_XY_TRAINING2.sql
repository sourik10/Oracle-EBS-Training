Create table XY_COH4_BATCH_EMP_2327838 (

Employee_number number(10) PRIMARY KEY,
First_name varchar2(30),
Last_name varchar2(30),
Email varchar2(40),
Position varchar2(6),
Year_OF_Birth Number(5),
Manager varchar2(40) ,
Hiredate  DATE,
Enddate DATE 
);


CREATE SEQUENCE XY_EMP_2327838_SEQ
START WITH 1000
INCREMENT BY 1
NOCYCLE;
COMMIT;

Insert into XY_COH4_BATCH_EMP_2327838 VALUES (
XY_EMP_2327838_SEQ.nextval,'Sourik' ,'Pan', 'sourik.pan@gmail.com','GENC',2004,'Vishal Bagade','12-JAN-2016', '18-JAN-2020');
Insert into XY_COH4_BATCH_EMP_2327838 VALUES (
XY_EMP_2327838_SEQ.nextval,'Rishaan' ,'Kumar', 'rishan.kumar@gmail.com','PA',2008,'Kiran Patil','21-OCT-2018', '22-MAR-2022');