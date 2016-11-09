select * from tb_Clientes
select * from tb_Cidades
select * from tb_Enderecos (NOLOCK)

BEGIN TRAN;

INSERT INTO tb_Enderecos (nmEndereco, cdCidade)
SELECT 
	C.nmEndereco,
	CI.cdCidade
FROM tb_Clientes C INNER JOIN tb_Cidades CI
ON C.nmCidade = CI.nmCidade;

ROLLBACK TRAN;
commit tran


