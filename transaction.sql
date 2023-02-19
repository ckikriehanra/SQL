--Explicit transaction
BEGIN TRANSACTION test_trans;--Indicate the statr point of an explicit transaction.
--SET TRANSACTION [ READ WRITE | READ ONLY ];
--Statements
DELETE FROM [dbo].[fly_view];
--ROLLBACK OR COMMIT
ROLLBACK;

SELECT * FROM [dbo].[fly_view];