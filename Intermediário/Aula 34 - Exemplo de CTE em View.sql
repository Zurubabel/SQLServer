
/*	
	SET DATEFORMAT YMD;
	select * from vw_DadosAnoAnteriorAnoAtual
*/

alter VIEW vw_DadosAnoAnteriorAnoAtual
AS
WITH Datas AS (
	SELECT
		FORMAT(DATEADD(YEAR, -5, GETDATE()), 'yyyy-01-01') as AnoAtualInicio,
		CAST(DATEADD(DAY, -1, DATEADD(YEAR, -5, GETDATE())) AS DATE) as AnoAtualFim,
		FORMAT(DATEADD(YEAR, -1, DATEADD(YEAR, -5, GETDATE())), 'yyyy-01-01') AS AnoAnteriorInicio,
		FORMAT(DATEADD(YEAR, -1, DATEADD(YEAR, -5, GETDATE())), 'yyyy-12-31') as AnoAnteriorFim
), DadosAnoAtual AS (
	SELECT
		*
	FROM
		[AdventureWorks2016].[Sales].[SalesOrderHeader], Datas
	WHERE
		OrderDate BETWEEN Datas.AnoAtualInicio AND Datas.AnoAtualFim
), DadosAnoAnterior AS (
	SELECT
		*
	FROM
		[AdventureWorks2016].[Sales].[SalesOrderHeader], Datas
	WHERE
		OrderDate BETWEEN Datas.AnoAnteriorInicio AND Datas.AnoAnteriorFim
), Final AS (
	SELECT * FROM DadosAnoAtual
	UNION ALL
	Select * From DadosAnoAnterior
)


SELECT * From Final



