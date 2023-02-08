-- % = 0 identify character
-- _ = 1 character
-- [A-G] = In the range A-G
-- [AGQ] = A, G or Q
-- [^AGQ] = Not A, G or Q

SELECT *
FROM Employee
WHERE [EmpLastName] LIKE '[^N-X]%';

-- Last name begin with character %
SELECT *
FROM Employee
WHERE [EmpLastName] LIKE '[%]%';