-- Total por cliente
SELECT 
    c.Nome,
    SUM(i.Quantidade * pr.Preco) AS TotalGasto
FROM Clientes c
JOIN Pedidos p ON c.ClienteID = p.ClienteID
JOIN ItensPedido i ON p.PedidoID = i.PedidoID
JOIN Produtos pr ON i.ProdutoID = pr.ProdutoID
GROUP BY c.Nome;
