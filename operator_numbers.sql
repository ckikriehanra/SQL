--To work with numbers we have 4 types of operators:
--	LOGIC:
--		AND
--		OR
--		NOT
--	COMPARE: =; <>(different); >; < >=; <=
--	BETWEEN val_1 AND val_2
--	IN (values)

SELECT * 
FROM Employee
WHERE [EmpNumber] BETWEEN 1 AND 4;

SELECT * 
FROM Employee
WHERE [EmpNumber] IN (1,4);