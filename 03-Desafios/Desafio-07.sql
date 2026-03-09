-- Desafio 7
-- Mostrar quantos produtos diferentes existem em cada pedido

SELECT 
    PedidoID,
    COUNT(DISTINCT ProdutoID) AS ProdutosDiferentes
FROM ItensPedido
GROUP BY PedidoID
ORDER BY ProdutosDiferentes DESC;
