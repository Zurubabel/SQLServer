select nmEndereco from tb_Clientes

BEGIN TRAN; ALTER TABLE tb_Clientes DROP COLUMN nmEndereco; ALTER TABLE tb_Clientes DROP COLUMN nmCidade; ALTER TABLE tb_Clientes DROP COLUMN nmEstado;

rollback tran

COMMIT TRAN