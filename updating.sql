SELECT * FROM tblTransaction WHERE EmpNumber = 2000;
SELECT * FROM tblTransaction WHERE EmpNumber = 15;

BEGIN TRANSACTION
SELECT * FROM tblTransaction WHERE EmpNumber = 2000;

UPDATE tblTransaction
SET EmpNumber = 2000, DateOfTransaction = NULL
OUTPUT inserted.*, deleted.* --OUTPUT help user can see what rows were inserted and what rows were deleted. It put into before [FROM source_table]
FROM tblEmployee AS E --[FROM table_source]: allows specifying data from <table_source> and updating the corresponding rows from the table in the first FROM clause.
RIGHT JOIN tblTransaction AS T
ON E.EmpNumber = T.EmpNumber
WHERE E.EmpNumber IS NULL; ----If table_source exist then this condition is applied in table_source else this condition is applied in table-dest

ROLLBACK TRANSACTION