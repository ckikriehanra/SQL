DECLARE @message VARCHAR(20) = 'life'
--left, right, substring
SELECT LEFT(@message, 2) AS lString;
SELECT RIGHT(@message, 3) AS rString;
SELECT SUBSTRING(@message, 2, 3) AS MiddleString; -- first character in string in sql has index 1 not zero.

--trim, ltrim, rtrim used to remove space character
SET @message = '  life    ';
SELECT LTRIM(@message) AS LeftTrim;
SELECT RTRIM(@message) AS RightTrim;
SELECT RTRIM(LTRIM(@message)) AS Trim;

--replace, 
SET @message = 'Life';
SELECT REPLACE(@message, 'l', 'L') AS newMessage;

--uppper, lower
SELECT UPPER(@message) AS UpperCaseMessage;
SELECT LOWER(@message) AS LowerCaseMessage;
--reverse
SELECT REVERSE(@message) AS RevMessage;
--len
SELECT LEN(@message) AS LengthOfMessage;