/*
	Aula 4 - Alterando o filegroup padrão de uma base de dados

	# Caso não seja alterado, as novas tabelas criadas irão para esse filegroup

	Filegroups da base SQLAvancado:
		* [PauloGuina]
		* [Jailson]
*/

-- Ao criar a base de dados

ALTER DATABASE SQLAvancado
MODIFY FILEGROUP Jailson DEFAULT;

-- No Wizard do SQL Server