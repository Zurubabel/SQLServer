/*
	Aula 18 - Alteração de data

	# Quando há uma alteração, o SQL realiza o seguinte processo
		* Lê a página a ser modificada e a coloca na memória (buffer pool)
		* Cria um log transação síncrono e depois atualiza a página no buffer
		* O banco de dados atualiza a página no disco assincronamente

	# Este processo é similar para as outras operações de manipulação de data (DML - INSERT, UPDATE, DELETE, SELECT e MERGE)

*/