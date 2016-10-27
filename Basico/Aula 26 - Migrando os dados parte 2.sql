-- Migrar cidades para a tabela tb_Cidades

BEGIN TRAN; -- Iniciar a transação

CREATE TABLE #tmp_Cidades(
	cdCidade INT IDENTITY(1,1),
	nmCidade VARCHAR(50),
	nmEstado VARCHAR(30),
	cdEstado INT
);

-- Inserir os dados das cidades na tabela temporária
INSERT INTO #tmp_Cidades(nmCidade, nmEstado)
SELECT DISTINCT nmCidade, nmEstado FROM tb_Clientes ORDER BY nmCidade;

-- Tratamento de dados

-- Update do código do estado

-- Mais complicado (Update com join)
/*UPDATE TC
SET TC.cdEstado = E.cdEstado
FROM #tmp_Cidades TC
INNER JOIN tb_Clientes T ON TC.nmCidade = T.nmCidade
INNER JOIN tb_Estados E ON T.nmEstado = E.nmEstado;*/

-- Mais fácil
UPDATE TC SET
TC.cdEstado = E.cdEstado
FROM #tmp_Cidades TC INNER JOIN tb_Estados E
ON TC.nmEstado = E.nmEstado;

-- select * from #tmp_Cidades

SET IDENTITY_INSERT tb_Cidades ON; -- Insere na coluna de identity

-- Inserir os dados na tabela de Cidades
INSERT INTO tb_Cidades (cdCidade, nmCidade, cdEstado)
SELECT cdCidade, nmCidade, cdEstado FROM #tmp_Cidades;

-- SELECT * FROM tb_Cidades;

DROP TABLE #tmp_Cidades;

SET IDENTITY_INSERT tb_Cidades OFF;

ROLLBACK TRAN;
-- COMMIT TRAN;

select * from tb_Clientes