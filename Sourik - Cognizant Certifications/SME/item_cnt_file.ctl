OPTIONS (SKIP=1)
LOAD DATA
INFILE '/mfgomdvl/temp/Itemdatafile.csv'
APPEND
INTO TABLE XX_COH4_PROJECT_2327838_TBL
FIELDS TERMINATED BY ","
TRAILING NULLCOLS
(
Employee_Number ,
    First_Name,
    Last_Name ,
    Email_Address , 
    Designation ,
    Year_of_birth,
    Manager ,
    Hire_Date ,
    End_Date ,
    Location ,
    Department 
)