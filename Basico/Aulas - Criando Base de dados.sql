/*
	Loja de Sucos do Jailson

	* Vende sucos (principalmente de Laranja)

	* Dados dos clientes:
		Nome (texto)
		nascimento (data dd/mm/aaaa)
		sexo (número)
		endereço
			Rua (texto)
			cidade (texto)
			Estado (texto)
		Telefones (texto)

	* Dados das vendas
		Número da venda (número)
		cliente que comprou (texto)
		preço total (número)

	* Dados do produto
		Nome (texto)
		Preço (número)
*/

/*
	Truncar - Diminui o tamanho do texto/dado

	nmProduto VARCHAR(3);

	"Coxinha" (7 letras) -> Cox
*/

-- Aula 4 - Criando Tabelas (Parte 1)

CREATE TABLE tb_DadosProduto (
	nmProduto VARCHAR(50) NOT NULL, -- Obrigatório
	vlProduto DECIMAL(6,2) NOT NULL
);

-- Aula 5 - Criando Tabelas (Parte 2)

CREATE TABLE tb_Clientes (
	nmCliente VARCHAR(50) NOT NULL,
	dtNascimento DATE,
	inSexo VARCHAR(1) NOT NULL,
	nmEndereco VARCHAR(50),
	nmCidade VARCHAR(50),
	nmEstado VARCHAR(30),
	nmTelefone1 VARCHAR(15),
	nmTelefone2 VARCHAR(15)
)