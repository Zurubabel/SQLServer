/*CREATE TABLE tb_TelefoneCliente (
	cdTelefone INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	cdCliente INT NOT NULL,
	nmTelefone VARCHAR(15) NOT NULL,
	inAtivoSN VARCHAR(1) NOT NULL DEFAULT 'S'
);
*/
ALTER TABLE tb_TelefoneCliente
ADD CONSTRAINT FK_TelefoneCliente_Cliente
FOREIGN KEY (cdCliente) REFERENCES tb_Clientes (cdCliente);

select * from tb_Clientes