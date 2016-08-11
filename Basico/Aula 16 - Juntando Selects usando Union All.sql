use dbLojaJailson

-- Seleção dos dados com valores
SELECT V.cdVenda, C.nmCliente, P.cdProduto, P.nmProduto, PV.qtProduto, P.vlProduto, qtProduto * vlProduto AS qtValorTotalProduto
FROM tb_Produtos P INNER JOIN tb_ProdutoVenda PV ON P.cdProduto = PV.cdProduto
INNER JOIN tb_Vendas V ON PV.cdVenda = V.cdVenda
INNER JOIN tb_Clientes C ON V.cdCliente = C.cdCliente

UNION ALL

SELECT V.cdVenda, C.nmCliente, NULL, 'Total produtos - Total vendas', SUM(PV.qtProduto) qtTotalProdutos, NULL, SUM(P.vlProduto * PV.qtProduto) AS qtValorTotalVenda
FROM tb_Produtos P INNER JOIN tb_ProdutoVenda PV ON P.cdProduto = PV.cdProduto
INNER JOIN tb_Vendas V ON PV.cdVenda = V.cdVenda
INNER JOIN tb_Clientes C ON V.cdCliente = C.cdCliente
GROUP BY V.cdVenda, C.nmCliente

