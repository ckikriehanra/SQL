USE university;
--Check If a stored procedure existed.
IF OBJECT_ID('pr_getinfo_employee', 'P') IS NOT NULL
DROP PROCEDURE pr_getinfo_employee;
GO 
CREATE PROCEDURE pr_getinfo_employee (@EmpNumberStart INT, @EmpNumberEnd INT, @Number_row INT OUTPUT, @optional_var INT = 1000)
AS 
--Why we need BEGIN and END? Because it group serial statement to a single statment.
--If the body only has 1 statment then can remove BEGIN, END
BEGIN 
	DECLARE @EmpNumber INT = @EmpNumberStart - 1
	IF @EmpNumberStart <= @EmpNumberEnd
		BEGIN
			WHILE @EmpNumber < @EmpNumberEnd
				--You can use CONTINUE, BREAK key word in WHILE loop same way when programing by other langauge.
				BEGIN
					SET @EmpNumber =  @EmpNumber + 1;
		
					IF @EmpNumber > 200
					BEGIN 
						SELECT * 
						FROM tblEmployee
						WHERE EmpNumber = @EmpNumber;
					END
				END
			--Procerdure can return value. In this case 0 mean succeed.
			RETURN 0;
		END
	ELSE 
		BEGIN
			SELECT 'Your EmpNumberEnd is less than EmpNumberStart';
			RETURN 1;
		END

	--SET @Number_row = @@ROWCOUNT;
	--SELECT @optional_var;
END

GO 
DECLARE @Number_row INT --OUTPUT parameter will be changed value after procerdure.
DECLARE @res_status INT
EXECUTE @res_status = pr_getinfo_employee 100, 300, @Number_row OUTPUT;
--SELECT @Number_row;
SELECT @res_status, 'status';

SELECT EmpNumber
FROM tblEmployee
WHERE EmpNumber BETWEEN 100 AND 300;