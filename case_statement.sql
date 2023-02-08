--CASE in SQL like SWITCH in other programing languages.
--The syntax:
--CASE
--	WHEN condition_1 THEN result_1
--	WHEN condition_2 THEN result_2
--	...
--	WHEN condition_n THEN result_n
--	ELSE result
--	END;

--Note: When no condition is catch and the statment doesn't have ELSE then it auto return NULL.

DECLARE @var_1 VARCHAR(20) = 'My_choice_C';
SELECT (CASE 
			WHEN @var_1 = 'My_choice_A' THEN 'A'
			WHEN @var_1 = 'My_choice_B' THEN 'B'
			ELSE 'no_choice'
		END
		) + '.' -- You can do some action with the result before return for cell
AS my_choice;