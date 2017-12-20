/*
	Autor: Zurubabel
	Data: 20/12/2017 00:46
	Base: AdventureWorks2014
	Pasta: 

	Função que retorna os dados completos do funcionário.
*/

CREATE FUNCTION UDF_DadosCompletosFuncionarios()
RETURNS @Retorno TABLE (
	NomeCompleto VARCHAR(70),
	Idade INT,
	Nascimento DATE,
	Sexo VARCHAR(1),
	AnosCasa INT, 
	Cargo VARCHAR(50)
)

AS
BEGIN
	INSERT INTO @Retorno
	SELECT 
		P.FirstName + ' ' + isnull(P.MiddleName, '') + '. ' + P.LastName as NomeCompleto,
		DATEDIFF(YEAR, E.BirthDate, GETDATE()) As Idade,
		E.BirthDate as Nascimento,
		E.Gender as Sexo,
		DATEDIFF(YEAR, E.HireDate, GETDATE()) as AnosCasa,
		E.JobTitle as Cargo
	FROM 
		[Person].[Person] P INNER JOIN [HumanResources].[Employee] E 
		ON P.BusinessEntityID = E.BusinessEntityID

	RETURN
END
	
	