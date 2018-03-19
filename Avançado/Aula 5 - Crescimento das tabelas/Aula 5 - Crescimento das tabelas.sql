/*
	Aula 5 - Crescimento das tabelas (https://docs.microsoft.com/pt-br/sql/t-sql/statements/alter-database-transact-sql-file-and-filegroup-options)

	# Quando criamos os arquivos do banco de dados, o SQL cria com alguns padrões de tamanho inicial e crescimento (5MB e 10%)
	# Podemos configurar cada um de uma forma

	# Atributos:
		* SIZE = Tamanho inicial do arquivo
		* MAXSIZE = Tamanho máximo
		* FILEGROWTH = O quanto o arquivo cresce quando necessário
*/

-- Se existir a base, iremos removê-la
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'SQLAvancado') 
	DROP DATABASE SQLAvancado;

-- Recriando definindo o tamaho dos arquivos
CREATE DATABASE SQLAvancado ON primary (
	name = N'SQLAvancado', filename = N'c:\sql\SQLAvancado.mdf',
	SIZE = 5MB, FILEGROWTH = 10MB
), filegroup [PauloGuina] (
	name = N'PauloGuina', filename = N'c:\sql\PauloGuina.ndf'
), filegroup [Jailson] (
	name = N'Jailson', filename = N'c:\sql\Jailson.ndf'
), (
	name = N'QueDelicia', filename = N'f:\sql\QueDeliciaCara.ndf'
) log on (
	name = N'Jaja_Log', filename = 'c:\sql\Jaja_Log.ldf'
)


