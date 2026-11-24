-- The main data contains the transactions received by the entire back office of a back, this schema is to filter transactions 
--for a unit in the back office
USE SQLPROJECTS;
GO
  
-- 1. CREATE DEPARTMENT TABLE 
DROP TABLE IF EXISTS dbo.dept_transactions;

CREATE TABLE dbo.dept_transactions (
     REQUEST_ID    nvarchar(50)
    ,AC_NO         float
    ,ACC_NAME      varchar(100)
    ,PRODUCT       varchar(100)
    ,CREATOR_ID    varchar(100)
    ,CREATOR_NAME  varchar(100)
    ,PROC_BY_ID    nvarchar(50)
    ,PROC_BY_NAME  varchar(100)
    ,REQ_BRANCH    varchar(100)
    ,STATUS        varchar(50)
    ,CREATED_ON    datetime2(7)
    ,PROCESSED_ON  datetime2(7)
    ,TOT_MANHOURS  nvarchar(50)
    ,S_BACK        varchar(100)
    ,CBO_MANHOURS  nvarchar(50)
)

INSERT INTO dbo.dept_transactions
SELECT REQUEST_ID, AC_NO, ACC_NAME, PRODUCT, CREATOR_ID, CREATOR_NAME,
       PROC_BY_ID, PROC_BY_NAME, REQ_BRANCH, STATUS, CREATED_ON,
       PROCESSED_ON, TOT_MANHOURS, S_BACK, CBO_MANHOURS
FROM dbo.Cbo
WHERE LTRIM(RTRIM(PROC_BY_NAME)) IN
      ('REAL NAME 1','REAL NAME 2','REAL NAME 3','REAL NAME 4','REAL NAME 5','REAL NAME 6') --These names have been left out due to sensitve nature
GO
