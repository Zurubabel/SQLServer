/*select * from tb_Clientes

BEGIN TRAN; INSERT INTO tb_TelefoneCliente (cdCliente, nmTelefone) SELECT cdCliente, nmTelefone1 FROM tb_Clientes;

INSERT INTO tb_TelefoneCliente (cdCliente, nmTelefone) SELECT cdCliente, nmTelefone2 FROM tb_Clientes WHERE nmTelefone2 <> '';

SELECT * FROM tb_TelefoneCliente;

COMMIT TRAN*/

BEGIN TRAN; 

ALTER TABLE tb_Clientes
DROP COLUMN nmTelefone1;

ALTER TABLE tb_Clientes
DROP COLUMN nmTelefone2;

SELECT * FROM tb_Clientes