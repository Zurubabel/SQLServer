-- Migrar cidades para a tabela tb_Cidades

BEGIN TRAN; -- Iniciar a transação

CREATE TABLE #tmp_Cidades(
	cdCidade INT IDENTITY(1,1),
	nmCidade VARCHAR(50),
	cdEstado INT
);

-- Inserir os dados das cidades na tabela temporária
INSERT INTO #tmp_Cidades(nmCidade)
SELECT DISTINCT nmCidade FROM tb_Clientes ORDER BY nmCidade;

-- Tratamento de dados

-- Update do código do estado
SELECT * FROM tb_Estados E 
INNER JOIN tb_Clientes C ON E.nmEstado = C.nmEstado



ROLLBACK TRAN;
-- COMMIT TRAN;

select * from tb_Clientes