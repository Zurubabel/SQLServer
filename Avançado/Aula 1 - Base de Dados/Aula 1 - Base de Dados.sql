/*
	Aula 1 - Armazenamento de Base de dados

	# O SQL pode armazenar, em teoria, 32,767 bases de dados.
	# Cada base possui 1-n arquivos de log (.ldf), que armazena os dados para possa haver uma recuperação (rollback);
	# Cada base possui 1 arquivo primário (.mdf) e 0-n arquivos secundários (.ndf)
	# Todos os arquivos estão agrupados em filegroups (grupos de arquivos).
		* Um Filegroup é uma unidade lógica para organizar os arquivos físicos da base de dados
*/
