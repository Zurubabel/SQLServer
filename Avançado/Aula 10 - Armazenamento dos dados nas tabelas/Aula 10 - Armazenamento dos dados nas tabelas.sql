/*
	Aula 10 - Armazenamento de dados na tabela (https://blogs.msdn.microsoft.com/fcatae/2016/04/26/dbcc-ind/)
	https://raresql.com/2013/01/24/sql-server-2012-sys-dm_db_database_page_allocations-dynamic-management-function/


	Funções de verificação
		sys.dm_db_database_page_allocations
		dbcc ind

	# Os dados são armazenados em páginas
	# Cada página possui N linhas de dados
	# Os campos são:
	•	PageFID – O id do arquivo da página;
	•	PagePID – o número da página no arquivo;
	•	IAMFID – O id do arquivo IAM (Index Allocation Map) que mapeia esta página (se o arquivo foi um IAM, o resultado será nulo, assim como o IAMFID da primeira linha da m (https://technet.microsoft.com/pt-br/library/ms187501(v=sql.105).aspx)
	•	IAMPID – o número da página que o arquivo IAM mapeia esta página;
	•	ObjectId – O ID que o índice desta página faz parte;
	•	PartitionNumber – O número da partição que esta página está;
	•	PartitionID – O ID interno da página ao qual o datarow está alocado;
	•	Iam_chain_type – o tipo da unidade de alocação (IN_ROW_DATA (para tabelas HEAP), LOB_DATA (Large Object) e ROW_OVERFLOW_DATA);
	•	PageType – Representa o tipo da página. As mais comuns são:
		o	1  - página de dados;
		o	2 – página de índice;
		o	3 e 4 – páginas de texto;
		o	8 – páginas GAM;
		o	9 – páginas SGAM;
		o	10 – página IAM;
		o	11 – página PFS;
	•	IndexLevel – Em qual nível a página está do índice (isso se estiver em algum índice). O número vai desde o 0 (página folha – mais na borda da árvore) até a página N, que é a raiz;
	•	NextPagaFID e NextPagePID – Próximas páginas;
	•	PrevPageFID e PrevPagePID – Páginas anteriores de acordo com o índice;



*/

create table tblJailson (
	col1 int NULL,
	col2 int
) on [Jailson]

insert into tblJailson values (1,2)


dbcc ind (
	'SQLAvancado',
	'dbo.tblJailson',
	-1
)

dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	4, --File ID
	16, -- Page ID
	3 -- Tipo de display
)

select * from sys.dm_db_database_page_allocations(DB_ID(), OBJECT_ID('tblJailson'), null, null, 'DETAILED')