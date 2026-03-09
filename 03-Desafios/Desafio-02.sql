-- Desafio 2
-- Mostrar o produto mais vendido

SELECT 
    Produtos.NomeProduto,
    SUM(ItensPedido.Quantidade) AS TotalVendido
FROM ItensPedido
INNER JOIN Produtos
ON ItensPedido.ProdutoID = Produtos.ProdutoID
GROUP BY Produtos.NomeProduto
ORDER BY TotalVendido DESC;
