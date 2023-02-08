DECLARE @var NVARCHAR(10);
--DECLARE @var CHAR(10);
SET @var = N'namﻹ';
SELECT @var AS myStr, LEN(@var) AS myLength, DATALENGTH(@var) as storage_used;

--String is a collection of characters
--Data type for character: 
--	char - ACSII
--	varchar - ACSII
--	nchar - UNICODE
--	nvarchar - UNICODE
--ACSII use 1 byte to represent for a character
--UNICODE use 2 bytes to represent for a character

--What is the difference between char and varchar?
--	Varchar: also call variable char is a variable data type. I mean the byte used to represent the string is depend on practical string.
--	But the practical storage size = no_char + 2bytes
--	Ex: 'nam' used 3+2=5 bytes
--
--	Char: is fixed data type.
--	practical storage size = max_no_char_declared 
--	EX: if you declare a string with type Char(10)
--	Then it alaway uses 10 bytes to storage string.

--Note: When using nchar or nvarchar the value of string need begin with character 'N'
--Ex: 'nam' must be written N'name'