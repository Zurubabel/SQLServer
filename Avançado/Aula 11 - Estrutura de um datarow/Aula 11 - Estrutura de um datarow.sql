/*
	Aula 11 - Estrutura de um Data Row (http://aboutsqlserver.com/2013/10/15/sql-server-storage-engine-data-pages-and-data-rows/)	

	O DataRow é composto por algumas partes:
		* TagA e TagB (1 Byte cada) - Contém informações sobre o tipo de linha, se a linha foi apagada, se a linha tem valores NULL...
		* FSize (2 bytes) - Informa o tamanho dos dados de tamanho fixo
		* Fdata (N bytes) - Os dados da coluna de tamanho fixo
		* Ncol (2 bytes) - Informa a quantidade de colunas na linha
		* NullBits (N° colunas / 8 bytes) - Informa a quantidade de valores nulos
		-- Parte variável
		* VarCont (2 bytes) - Quantidade de colunas com dados de tamanho variável
		* VarOffset (2 * Varcount) bytes - Armazena 2 bytes x quantidade de colunas com valores variáveis, mesmo que a coluna tenha
		valores nulos
		* VarData (N bytes) - Os dados de valores variáveis
		* Tag de Versionamento (14 bytes) - Tag de versionamento para algumas operações	
*/


dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	4, --File ID
	16, -- Page ID
	3 -- Tipo de display
)

insert into tblJailson values (null, 1)

dbcc ind (
	'SQLAvancado',
	'dbo.tblJailson',
	-1
)

/*
	Insert 1

	select * from tblJailson
	* TagA  10
	* TagB  00
	* FSize 0c00
	* Fdata 
		- Col1 01000000
		- Col2 02000000
	* Ncol 020000
	* NullBits 00

*/