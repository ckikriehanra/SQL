--Union will combine datasets by horizal 
--Join will combine datasets by vertical

--Conditions to union two tables:
--	1.same no_columns
--	2.same compatible data types

-- Union don't sort the order of result
-- Union will automatically delete duplicate records. If you want to keep duplicate records -> use Union All

SELECT CONVERT(CHAR(5), 'hi') AS greeting
UNION 
SELECT CONVERT(CHAR(11), 'Hello')
UNION ALL 
SELECT CONVERT(CHAR(11), 'hi')
UNION 
SELECT CONVERT(CHAR(11), 'bonjour');--The data type of greeting is CHAR(11)

SELECT 4
UNION
SELECT 'HI';

--Except: Get the records in table_1 but not in table_2
--Intersect:Get the records which in table_1 and table_2