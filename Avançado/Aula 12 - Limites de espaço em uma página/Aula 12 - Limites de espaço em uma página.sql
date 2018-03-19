/*
	Aula 12 - Limites de espaço em uma página

	# Cada página só pode guardar até 8.060 bytes de dados de tamanho fixo
	# Demonstração das tabelas
*/

-- Tabela boa

use SQLAvancado

CREATE TABLE tbl_TabelaBoa(
	col1 CHAR(2000),
	col2 CHAR(2000)
)

dbcc ind(
	'SQLAvancado',
	'dbo.tbl_TabelaBoa', -- Nome da tabela
	1
)

insert into tbl_TabelaBoa values ('Churros', 'Pimenta')

dbcc traceon(3604);
dbcc page (
	'SQLAvancado', -- Base de dados
	1, -- FID
	121, -- PID
	3
)


-- Tabela Ruim

CREATE TABLE tbl_TabelaRuim (
	col1 CHAR(4000),
	col2 CHAR(4060)
)

CREATE TABLE tbl_TabelaRuim2 (
	col1 CHAR(2000),
	col2 CHAR(6060),
	col3 CHAR(30)
)