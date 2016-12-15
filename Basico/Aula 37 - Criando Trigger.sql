/*DROP TABLE tb_ClientesBackup;*/

/*CREATE TABLE tb_Clientes_Hist (
	cdClientes_Hist INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	cdCliente INT NOT NULL,
	nmCliente VARCHAR(50),
	dtNascimento DATE NULL,
	inSexo VARCHAR(1) NULL,
	cdEndereco INT NULL,
	dtInclusao DATETIME
);*/

/*CREATE TRIGGER tr_Backup_Clientes
ON tb_Clientes
FOR UPDATE
AS
	INSERT INTO tb_Clientes_Hist(cdCliente, nmCliente, dtNascimento, inSexo, cdEndereco, dtInclusao)
	SELECT cdCliente, nmCliente, dtNascimento, inSexo, cdEndereco, GETDATE() FROM deleted;*/


SELECT * FROM tb_Clientes;
SELECT * FROM tb_Clientes_Hist;

BEGIN TRAN; UPDATE tb_Clientes SET nmCliente = 'Jailson' WHERE cdCliente = 1; 
commit tran