SELECT tblEmployee.EmpNumber AS EmployeeNumber, COUNT(*) AS no_transactions, SUM(Amount) AS sum_of_amounts
FROM tblEmployee
LEFT OUTER JOIN tblTransaction
ON tblEmployee.EmpNumber = tblTransaction.EmpNumber
GROUP BY tblEmployee.EmpNumber
ORDER BY tblEmployee.EmpNumber;

SELECT * FROM tblEmployee;

SELECT tblEmployee.EmpNumber, EmpFirstName, EmpLastName, Amount
FROM tblEmployee
JOIN tblTransaction
ON tblEmployee.EmpNumber = tblTransaction.EmpNumber;