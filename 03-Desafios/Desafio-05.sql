-- Desafio 5
-- Mostrar o valor total de vendas por produto

SELECT 
    Produtos.NomeProduto,
    SUM(ItensPedido.Quantidade * Produtos.Preco) AS TotalVendas
FROM ItensPedido
INNER JOIN Produtos
ON ItensPedido.ProdutoID = Produtos.ProdutoID
GROUP BY Produtos.NomeProduto
ORDER BY TotalVendas DESC;
