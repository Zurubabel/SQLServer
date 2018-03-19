/*
	Aula 19 - Sobre o tamanho dos dados e suas leituras (https://technet.microsoft.com/en-us/library/ms172424(v=sql.110).aspx)

	# O SQL é um aplicativo com muito uso de entrada e saída de disco (I/O)
	# Quanto maior a quantidade de páginas aos quais o dado está, mais I/O será demandada
	# Temos que verificar qual é o tamanho dos dados na hora de criarmos as tabelas
	# Dependendo do tipo de dado usado, pode haver uma grande economia de disco a longo prazo.

*/
USE SQLAvancado

CREATE TABLE tbl_Colunao (
	id int,
	colunao char(2000)
);

create table tbl_Coluninha (
	id int,
	coluninha varchar(2000)
)
-- Korotkevitch, Dmitri. Pro SQL Server Internals (Locais do Kindle 1408). Apress. Edição do Kindle. 
;with N1(C) as (select 0 union all select 0),
N2(C) as (Select 0 from N1 CROSS JOIN N1 as T2),
N3(C) as (Select 0 from N2 as T1 CROSS JOIN N2 as T2),
N4(C) as (Select 0 from N3 as T1 CROSS JOIN N3 as T2),
N5(C) as (Select 0 from N4 AS T1 CROSS JOIN N4 as T2),
IDs(ID) as (select row_number() over (order by (select null)) from N5)

INSERT INTO tbl_Colunao
SELECT ID, 'D' from IDs;


;with N1(C) as (select 0 union all select 0),
N2(C) as (Select 0 from N1 CROSS JOIN N1 as T2),
N3(C) as (Select 0 from N2 as T1 CROSS JOIN N2 as T2),
N4(C) as (Select 0 from N3 as T1 CROSS JOIN N3 as T2),
N5(C) as (Select 0 from N4 AS T1 CROSS JOIN N4 as T2),
IDs(ID) as (select row_number() over (order by (select null)) from N5)

INSERT INTO tbl_Coluninha
SELECT ID, 'D' from IDs;

dbcc ind (
	'SQLAvancado',
	'dbo.tbl_Coluninha',
	-1
)

dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	1,
	32029,
	3
)

/*

SET STATISTICS TIME ON

SELECT * FROM tbl_Coluninha
SELECT * FROM tbl_Colunao

DROP TABLE tbl_Coluninha
DROP TABLE tbl_Colunao

*/
