/*
	Aula 3 - Armazenamento das Tabelas

	# Ao criar as tabelas, elas serão armazenadas em seus respectivos filegroups
	# Se não for especificado o filegroup padrão, as tabelas serão armazenadas no PRIMARY

	Filegroups da base SQLAvancado:
		* [PauloGuina]
		* [Jailson]
*/

CREATE TABLE dbo.tblPrimary ( -- Tabela que irá para o filegroup padrão (neste caso, o Primary)
	coluna int
)

CREATE TABLE dbo.tblPauloGuina (
	coluna int
) ON [PauloGuina]

CREATE TABLE dbo.tblJailson (
	coluna int
) ON [Jailson]