/*
	Aula 2 - Criando base de dados (Script)
*/
CREATE DATABASE SQLAvancado ON primary (
	name = N'SQLAvancado', filename = N'c:\sql\SQLAvancado.mdf'
), filegroup [PauloGuina] (
	name = N'PauloGuina', filename = N'c:\sql\PauloGuina.ndf'
), filegroup [Jailson] (
	name = N'Jailson', filename = N'c:\sql\Jailson.ndf'
), (
	name = N'QueDelicia', filename = N'f:\sql\QueDeliciaCara.ndf'
) log on (
	name = N'Jaja_Log', filename = 'c:\sql\Jaja_Log.ldf'
)