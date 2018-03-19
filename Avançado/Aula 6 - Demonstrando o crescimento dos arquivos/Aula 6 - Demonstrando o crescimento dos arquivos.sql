/*
	Aula 6 - Demonstrando o crescimento dos arquivos

	# Aula para demonstrar o crescimento entre arquivos.
	# Testaremos em duas tabelas: tblPauloguina (filegroup com 1 arquivo) e tblJailson (filegroup com 2 arquivos)s
*/

-- Tabela PauloGuina (Filegroup com 1 arquivo)
DECLARE @i int

set @i = 0

while @i < 1000000
begin

	INSERT INTO dbo.tblPauloGuina VALUES (@i)
	
	set @i = @i + 1;

end

-- Tabela tblJailson (Filegroup com 2 arquivos)

DECLARE @i int

set @i = 0

while @i < 1000000
begin

	INSERT INTO dbo.tblJailson VALUES (@i)
	
	set @i = @i + 1;

end