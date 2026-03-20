-- Desafio 9
-- Ranking de clientes por total gasto

SELECT 
    Clientes.Nome,
    SUM(ItensPedido.Quantidade * Produtos.Preco) AS TotalGasto,
    RANK() OVER (ORDER BY SUM(ItensPedido.Quantidade * Produtos.Preco) DESC) AS Ranking
FROM Clientes
INNER JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID
INNER JOIN ItensPedido
ON Pedidos.PedidoID = ItensPedido.PedidoID
INNER JOIN Produtos
ON ItensPedido.ProdutoID = Produtos.ProdutoID
GROUP BY Clientes.Nome;
