/*
	Aula 7 - Tipos de Armazenamento

	# De forma geral, existe três tipos de armazenamento e de índices: armazenamento em linha (rowstore), coluna (columnstore) e na memória (in-memory storage)
		* Também existem índices columstore
	# Rowstore - O "padrão" de armazenamento de tabelas relacionais
	# Columstore - É usado para tabelas de Data Warehouses (Tabelas de fatos e tabelas de dimensões)
		* https://logicalread.com/sql-server-columnstore-index-w02/#.WpxmHmrwbcc
		* https://www.mssqltips.com/sqlservertip/5225/sql-server-clustered-columnstore-index-examples-for-etl/
	# In-Memory OLTP 
		* https://www.youtube.com/watch?v=l5l5eophmK4 - Vídeo sobre a tecnologia
		* https://docs.microsoft.com/pt-br/sql/relational-databases/in-memory-oltp/in-memory-oltp-in-memory-optimization 

	# http://www.sqlservercentral.com/articles/ColumnStore+Index/125264/ - 
		Comparação entre as duas tecnologias (Índices de colunas x índices de linhas)
	# http://15721.courses.cs.cmu.edu/spring2017/papers/09-olapindexes/p1177-larson.pdf - Sobre o columnstore

*/