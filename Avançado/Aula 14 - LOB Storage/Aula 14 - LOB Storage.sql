/*
	Aula 14 - Armazenamento LOB

	# Demonstração do LOB

	# Igual ao Row-Overflow, é uma página com ponteiro para outras folhas.

	# Caso a página não tenha espaço para o dado, será criada uma página nova
*/

CREATE TABLE tbl_TabelaLOB (
	id INT,
	texto VARCHAR(MAX)
)

INSERT INTO tbl_TabelaLOB VALUES (1, REPLICATE(CONVERT(VARCHAR(MAX), 'A'), 16000))


dbcc ind (
	'SQLAvancado',
	'dbo.tbl_TabelaLOB',
	1
)

dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	1,
	156,
	3
)