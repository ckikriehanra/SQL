--With WHERE clause

SELECT *
FROM tblTransaction AS T
WHERE T.EmpNumber IN 
	(SELECT EmpNumber FROM tblEmployee AS E WHERE E.EmpLastName LIKE 'y%')
ORDER BY EmpNumber;

SELECT * FROM tblTransaction;

SELECT *
FROM tblTransaction AS T
WHERE T.EmpNumber IN 
	(SELECT EmpNumber FROM tblEmployee AS E WHERE E.EmpLastName NOT LIKE 'y%')
ORDER BY EmpNumber; --must be in tblTransaction and tblEmployee, and not 126-129
					--INNER JOIN

SELECT *
FROM tblTransaction AS T
WHERE T.EmpNumber NOT IN 
	(SELECT EmpNumber FROM tblEmployee AS E WHERE E.EmpLastName LIKE 'y%')
ORDER BY EmpNumber; --must be in tblTransaction and not 126-129
					--LEFT JOIN

--With FROM clause
	--Need alias for sub query.
SELECT *
FROM tblTransaction AS T
LEFT JOIN (
	SELECT * FROM tblEmployee WHERE EmpLastName LIKE 'cr%'
) AS E
ON E.EmpNumber = T.EmpNumber
ORDER BY T.EmpNumber
	--Different
SELECT *
FROM tblTransaction AS T
LEFT JOIN tblEmployee AS E
ON E.EmpNumber = T.EmpNumber
WHERE E.EmpLastName LIKE 'cr%'
ORDER BY T.EmpNumber

--With SELECT clause
SELECT E.EmpNumber, E.EmpFirstName, E.EmpLastName, COUNT(T.EmpNumber) AS NumTransactions
FROM tblTransaction AS T
INNER JOIN tblEmployee AS E
ON E.EmpNumber = T.EmpNumber
WHERE E.EmpLastName LIKE 'cr%'
GROUP BY E.EmpNumber, E.EmpFirstName, E.EmpLastName
ORDER BY E.EmpNumber;

	--Can do better by using subqury in SELECT:
	--Note: only query one attr in a sub query with SELECT clause. This sub query is correlated query.
SELECT E.EmpNumber, E.EmpFirstName, E.EmpLastName, (
	SELECT COUNT(T.EmpNumber) 
	FROM tblTransaction AS T
	WHERE T.EmpNumber = E.EmpNumber
	) AS NumTransactions
FROM tblEmployee AS E
WHERE E.EmpLastName LIKE 'cr%';

--Correlated subquery -- WHERE 
	--Sometime it help you avoid to join tables then reduce memory.
SELECT *
FROM tblTransaction AS T
WHERE EXISTS
	(SELECT EmpNumber FROM tblEmployee AS E WHERE EmpLastName LIKE 'cr%' AND T.EmpNumber = E.EmpNumber)
ORDER BY EmpNumber;

SELECT T.*
FROM tblTransaction AS T
INNER JOIN tblEmployee AS E
ON T.EmpNumber = E.EmpNumber
WHERE E.EmpLastName LIKE 'cr%'
ORDER BY E.EmpNumber;

