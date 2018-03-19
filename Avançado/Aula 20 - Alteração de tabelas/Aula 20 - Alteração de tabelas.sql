/*
	Aula 20 - Alteração de tabelas

	# Ao alterar uma tabela (ALTER TABLE), o SQL pode proceder de três maneiras:
		* Só altera a metadata (drop de coluna ou alterar uma colona NOT NULL para NULL, por exemplo)
		* Altera a metadata, mas precisa de um table scan (de NULL para NOT NULL)
		* Altera o tipo da coluna e tem que haver a verificação de todas as linhas (de char para int)
*/

USE SQLAvancado

-- Criação da tabela de exemplo
CREATE TABLE tbl_ExemploAlteracao (
	InteiroNaoNull INT NOT NULL,
	InteiroNull INT NULL,
	BigInteiro BIGINT,
	Caractere CHAR(10),
	InteiroPequeno TINYINT
)

-- Primeiro caso
INSERT INTO tbl_ExemploAlteracao VALUES (1, 1, 50, 'Churros', 1)

ALTER TABLE tbl_ExemploAlteracao 
ALTER COLUMN InteiroNaoNull INT NULL

-- Segundo caso
DELETE FROM tbl_ExemploAlteracao;

INSERT INTO tbl_ExemploAlteracao VALUES (1, NULL, 50, 'Churros', 1)

ALTER TABLE tbl_ExemploAlteracao 
ALTER COLUMN InteiroNull INT NOT NULL

UPDATE tbl_ExemploAlteracao SET InteiroNull = 0 WHERE InteiroNull is NULL

-- Terceiro caso
DELETE FROM tbl_ExemploAlteracao;

INSERT INTO tbl_ExemploAlteracao VALUES (1, 1, 50, '1', 1)
INSERT INTO tbl_ExemploAlteracao VALUES (1, 1, 50, 'Jhonsons', 1)

ALTER TABLE tbl_ExemploAlteracao 
ALTER COLUMN Caractere INT 

INSERT INTO tbl_ExemploAlteracao VALUES (1, 1, 9223372036854775000, '1', 1)

ALTER TABLE tbl_ExemploAlteracao 
ALTER COLUMN BigInteiro INT 


dbcc ind (
	'SQLAvancado',
	'dbo.tbl_ExemploAlteracao',
	1
)

dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	1,
	32019,
	3
)