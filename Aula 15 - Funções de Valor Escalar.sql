CREATE FUNCTION UDF_NomeCompletoIdade(@BusinessEntityID INT)
RETURNS VARCHAR(250)
AS
BEGIN
	RETURN (SELECT DISTINCT
		P.FirstName + ' ' + P.MiddleName + '. ' + P.LastName + ', ' + CAST(DATEDIFF(YEAR, E.BirthDate, GETDATE()) AS VARCHAR(4)) + ' anos'
	FROM
	[Person].[Person] P INNER JOIN [HumanResources].[Employee] E 
	ON P.BusinessEntityID = E.BusinessEntityID
	WHERE
		P.BusinessEntityID = @BusinessEntityID)

END