--GROUP BY: used to group the row has the same something.
--The order of statement
--	SELECT
--	FROM
--	WHERE	- filter records
--	GROUP BY
--	HAVING	- filter groups by using COUNT, MAX, MIN, SUM, AVG
--	ORDER BY - optional but you should use it because the is deterministic. It can use SUM, AVG, MIN, MAX, COUNT

--Note: In practical, the order sql server process: FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY
--So you cannot use aliases in line GROUP BY because with real order of statement SELECT is last row SQL process.
--All operator MIN, MAX, COUNT only apply for a group so if you don't have any group you can't use it. A goup is a collection of records(rows).
--MIN, MAX, COUNT only used in line SELECT.
SELECT [EmpAddress] AS address, COUNT(*) AS No_Records
FROM Employee 
WHERE 1=1
GROUP BY [EmpAddress]
ORDER BY COUNT(*);

SELECT MIN([EmpDateBirth]) AS min_dateBirth
FROM Employee
GROUP BY [EmpDateBirth];

SELECT [EmpDateBirth], COUNT(EmpNumber)
FROM Employee
GROUP BY [EmpDateBirth]
HAVING COUNT(*) > 1;

