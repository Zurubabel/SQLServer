/*
	Aula 16 - Extensões e Páginas de Alocação (https://technet.microsoft.com/en-us/library/ms190969(v=sql.105).aspx)

	# O SQL armazena em unidades de 8 páginas, totalizando 64kb chamadas extensões (extents)
	# As páginas podem estar de extensões mistas (mixed extends) ou de tipos iguais (uniform extends)
	# Por padrão a primeira extensão é mista. Depois ela é uniforme
	# As páginas são monitoradas através de mapas de alocação
	# O SQL possui arquivos de monitoramento chamados Mapas de Alocação (Allocation Maps)
		* IAM (Index Allocation Map) - Cuida das páginas de índices e de dados
		* GAM (Global Allocation Map) - Verifica se a páginas está alocada em qualquer objeto
		* SGAM (Shared Global Allocation Map) - Verifica se a página está alocada em uma extensão mista
			- GAM e SGAM podem cuidar de até 64.000 extensões (4GB)
*/

create table tbl_Teste(
	col1 char(5000)
)

INSERT INTO tbl_Teste values (replicate('x', 5000))

dbcc ind (
	'SQLAvancado',
	'dbo.tbl_Teste',
	1
)

dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	1,
	32039,
	3
)

-- https://raresql.com/2013/01/24/sql-server-2012-sys-dm_db_database_page_allocations-dynamic-management-function/
select * from sys.dm_db_database_page_allocations(DB_ID(), OBJECT_ID('tbl_Teste'), NULL, NULL, 'DETAILED')
