/*
	Aula 8 - Data Pages e Data Rows

	# Os espaços do Banco de Dados são divididos em páginas de 8kb cada;
	# As páginas são numeradas ordendamente começando pelo 0 (entra página = +1; sai página -1)
	# A página é composta por algumas partes: Page Header (96 bytes), data rows (onde os dados são armazenados),
	um espaço em branco e o	Slot Array;

	# O Header identifica os metadados da página (qual objeto pertence, quantidade de linhas, etcs);
	# Em seguida tem o espaço onde os dados das linhas são armazenados;
	# O Slot Array indica a ordem lógica dos dados na página
*/