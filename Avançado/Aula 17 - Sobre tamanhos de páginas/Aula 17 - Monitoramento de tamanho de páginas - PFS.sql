/*
	Aula 17 - Monitoramento de tamanho de páginas - PFS

	# O SQL monitora o tamanho de cada página através do Page Free Space
	# O monitoramento é feito por classes:
		* Vazio
		* 1-50%
		* 51-80%
		* 81-95%
		* 96-100%
	# Caso o SQL verifique que o tamanho dos dados extrapolará os 8k, será criada uma nova página
	# Cuidado ao criar tabelas com dados de tamanho fixo, pois pode acarretar em espaços sem uso

	- m_slotCnt = Quantidade de registros na página
	- m_freeCnt = Quantidade de bytes livres

	* Lembremos que existem outros dados além das informações das colunas
*/
-- DROP TABLE tbl_PFS

USE SQLAvancado

CREATE TABLE tbl_PFS (
	coluna INT -- INT = 4 bytes
)

-- 8.083
INSERT INTO tbl_PFS VALUES (1)

dbcc ind (
	'SQLAvancado',
	'dbo.tbl_PFS',
	1
)

dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	1,
	32029,
	3
)

DECLARE @i int;
SET @i = 0
while @i < 500
begin	
	INSERT INTO tbl_PFS values (1);
	SET @i = @i + 1;
end

-- Tamanho variável

-- DROP TABLE tbl_PFS_Var 

create table tbl_PFS_Var (
	letra VARCHAR(4000)
)

INSERT INTO tbl_PFS_Var VALUES (replicate('x', 20))

dbcc ind (
	'SQLAvancado',
	'dbo.tbl_PFS_Var',
	1
)

dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	1,
	32040,
	3
)

-- Tabela desperdício
-- DROP TABLE tbl_PFS_PerdeEspacoPraCaceteQueVoceVaiTerIdeiaAgora

CREATE TABLE tbl_PFS_PerdeEspacoPraCaceteQueVoceVaiTerIdeiaAgora (
	desperdicandoPraCacete CHAR(3500)
)

INSERT INTO tbl_PFS_PerdeEspacoPraCaceteQueVoceVaiTerIdeiaAgora VALUES ('A'), ('B'), ('C')

dbcc ind (
	'SQLAvancado',
	'dbo.tbl_PFS_PerdeEspacoPraCaceteQueVoceVaiTerIdeiaAgora',
	1
)

dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	1,
	32029,
	3
)

-- Sigla CHAR(2)