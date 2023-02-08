-- Obj_1 + ANY/SOME/ALL + setdata
--ANY/SOME = OR
--ALL = AND

SELECT *
FROM tblTransaction AS T
WHERE T.EmpNumber <> ALL 
	(SELECT EmpNumber FROM tblEmployee AS E WHERE E.EmpLastName LIKE 'cr%')
ORDER BY EmpNumber;

SELECT EmpNumber FROM tblEmployee AS E WHERE E.EmpLastName LIKE 'cr%'

-- Anything <> ANY(843,844,845,846,847)
-- Anything <> 843 OR Anything <> 844 OR Anything <> 845 OR Anything <> 846 OR Anything <> 847

-- Anything <> SOME(843,844,845,846,847)
-- Anything <> 843 OR Anything <> 844 OR Anything <> 845 OR Anything <> 846 OR Anything <> 847 

-- Anything <> ALL(843,844,845,846,847)
-- Anything <> 843 AND Anything <> 844 AND Anything <> 845 AND Anything <> 846 AND Anything <> 847