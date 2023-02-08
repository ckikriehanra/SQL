--table: employee
--attributes: EmpNumber, EmpFirstName, EmpMiddleName, EmpLastName, EmpSSN, EmpDateBirth
CREATE TABLE Employee
(	EmpNumber INT NOT NULL,
	EmpFirstName VARCHAR(50) NOT NULL,
	EmpMiddleName VARCHAR(50) NULL,
	EmpLastName VARCHAR(50) NOT NULL,
	EmpSSN VARCHAR(10) NULL,
	EmpDateBirth DATETIME NULL,

	PRIMARY KEY(EmpNumber)
);

