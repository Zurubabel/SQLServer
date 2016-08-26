CREATE TABLE tb_Enderecos (
	cdEndereco INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nmEndereco VARCHAR(50) NOT NULL,
	nmCEP VARCHAR(9),
	cdCidade INT NOT NULL
)

CREATE TABLE tb_Cidades (
	cdCidade INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nmCidade VARCHAR(50) NOT NULL,
	cdEstado INT NOT NULL
)

CREATE TABLE tb_Estados (
	cdEstado INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nmEstado VARCHAR(30) NOT NULL,
	nmSigla VARCHAR(2) NOT NULL
)

ALTER TABLE tb_Enderecos
ADD CONSTRAINT FK_Enderecos_Cidades
FOREIGN KEY (cdCidade)
REFERENCES tb_Cidades (cdCidade);

ALTER TABLE tb_Cidades
ADD CONSTRAINT FK_Cidades_Estados
FOREIGN KEY (cdEstado)
REFERENCES tb_Estados (cdEstado);
