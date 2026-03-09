-- Desafio 3
-- Mostrar quantos produtos diferentes cada cliente comprou

SELECT 
    Clientes.Nome,
    COUNT(DISTINCT ItensPedido.ProdutoID) AS ProdutosDiferentes
FROM Clientes
INNER JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID
INNER JOIN ItensPedido
ON Pedidos.PedidoID = ItensPedido.PedidoID
GROUP BY Clientes.Nome
ORDER BY ProdutosDiferentes DESC;
