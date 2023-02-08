--SELECT * FROM Employee;
GO
--Declare local variable and init value
DECLARE @var_1 AS VARCHAR(10)='HELLO';
PRINT @var_1;
--Assign new value for variable
SET @var_1 = 'New Value';
PRINT @var_1;
--Use variable in condition statement 
SET @var_1 = 'Nam';
SELECT * 
FROM Employee AS Emp
WHERE Emp.EmpLastName = @var_1
;

GO
--Use variable to save data from table by using SELECT statement
DECLARE @var_2 AS VARCHAR(10)='HI';
SELECT @var_2 = EmpLastName
FROM Employee AS Emp
WHERE Emp.EmpAddress = 'HaNam';
PRINT @var_2;

GO
--Use a varable in many batch.
--Using temporary tables
CREATE TABLE TempTbl(
	Temp VARCHAR(10));
DECLARE @var_3 VARCHAR(10) = NULL;
SELECT @var_3 = EmpLastName
FROM Employee AS Emp
WHERE Emp.EmpAddress = 'HaNam';
INSERT INTO TempTbl
VALUES (@var_3);

GO
DECLARE @var_3 VARCHAR(10) = NULL;
SELECT @var_3 = Temp
FROM TempTbl;
PRINT @var_3;


