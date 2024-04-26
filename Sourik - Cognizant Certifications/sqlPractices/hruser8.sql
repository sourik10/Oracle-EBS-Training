select * from empsal;

select * from BANKSTATEMENT;
truncate table empsal;
truncate table bankstatement;

execute pkg_sal_process.sal_cal('Jan');
execute pkg_sal_process.bank_sta('Jan');
select * from bankstatement;


truncate table empsal;
truncate table bankstatement;
select * from empsal;
SELECT * FROM bankstatement;

