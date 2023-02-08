INSERT INTO Employee(EmpNumber, EmpFirstName, EmpMiddleName, EmpLastName, EmpSSN, EmpDateBirth, EmpAddress)
VALUES (4, 'Nguyen', 'Manh', 'Cuong', '0000000000', '2001-01-05', 'HaNam')
;

INSERT INTO Employee(EmpNumber, EmpFirstName, EmpLastName, EmpSSN, EmpDateBirth)
VALUES (2, 'Nguyen', 'Nam', '0000000000', '2001-01-05')
;
GO
SELECT * FROM Employee;
SELECT EmpNumber FROM Employee;
GO
-- Add new column into table
ALTER TABLE Employee
ADD Address VARCHAR(50) NULL
;

INSERT INTO Employee(EmpNumber, EmpFirstName, EmpMiddleName, EmpLastName, EmpSSN, EmpDateBirth, Address)
VALUES (3, 'Nguyen', 'Van', 'Hung', '0000000000', '2001-01-05', 'Hanoi')
;
GO
-- Drop a column in a table
ALTER TABLE Employee
DROP COLUMN Address
;

ALTER TABLE Employee
ADD EmpAddress VARCHAR(50) NULL
;
GO
-- Update a column in a table
ALTER TABLE Employee
ALTER COLUMN EmpAddress VARCHAR(50)
;
GO

