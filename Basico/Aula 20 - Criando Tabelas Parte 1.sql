CREATE TABLE tb_Enderecos {
	cdEndereco INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nmEndereco VARCHAR(50) NOT NULL,
	nmCEP VARCHAR(9) 
}

CREATE TABLE tb_Cidades {
	cdCidade INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nmCidade VARCHAR(50) NOT NULL
}

CREATE TABLE tb_Estados {
	cdEstado INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nmEstado VARCHAR(30) NOT NULL,
	nmSigla VARCHAR(2) NOT NULL
}