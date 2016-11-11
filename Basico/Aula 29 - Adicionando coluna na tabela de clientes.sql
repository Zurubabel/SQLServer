use dbLojaJailson;

SELECT * FROM tb_Clientes

BEGIN TRAN;
ALTER TABLE tb_Clientes
ADD cdEndereco INT NULL;

ALTER TABLE tb_Clientes
ADD CONSTRAINT FK_Clientes_Enderecos
FOREIGN KEY (cdEndereco)
REFERENCES tb_Enderecos (cdEndereco);


ROLLBACK TRAN;

--COMMIT TRAN;