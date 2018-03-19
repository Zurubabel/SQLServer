/*
	Aula 13 - Armazenamento Row Overflow

	# Existem dois tipos de armazenamento de dados:
		* Row Overflow Storage - Quando a página não excede 8.000 bytes
		* LOB Storage - Quando o objeto é grande (> 8kb)

	# Quanto maior a quandidade de colunas e dados, maior é a quantidade de páginas de Row Overflow

*/

create table tbl_RowOverflow (
	id int,
	col1 varchar(8000),
	col2 varchar(8000)
	--, col3 varchar(8000)
)

select * from tbl_RowOverflow

--insert into tbl_RowOverflow values (1, replicate('x', 800), replicate('y', 800)) --, replicate('z', 8000))

--insert into tbl_RowOverflow values (1, replicate('x', 8000), replicate('y', 8000)), replicate('z', 8000))

dbcc ind (
	'SQLAvancado',
	'dbo.tbl_RowOverflow',
	1
)

dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	1,
	142,
	3
)