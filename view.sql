USE [first_db];

--View is a virtual table. Unless indexed, it does not save real data but can give you needed data when you need.
--In SQL server, when you modify data in view, this data will be applied into real table.

GO
CREATE VIEW my_view
AS
	SELECT * FROM [dbo].[Employee];

-- Create a trigger to avoid insert, delete or update into my_view
GO
CREATE TRIGGER trReadOnly_my_view ON my_view
	INSTEAD OF INSERT,
				UPDATE,
				DELETE
AS 
BEGIN 
	RAISERROR('my_view view is read only.', 16, 1) -- LEVEL 16, STATE 1
	ROLLBACK TRANSACTION
END

SELECT * FROM [dbo].[Employee];
SELECT * FROM my_view;
INSERT INTO my_view(id)
VALUES (5);


-- Has 4 types of views: normal view, indexed view, patitioned view, system view.