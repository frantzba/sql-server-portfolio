SELECT 
    c.Nome AS Cliente,
    p.Nome AS Produto,
    i.Quantidade,
    pr.Preco,
    (i.Quantidade * pr.Preco) AS Total
FROM ItensPedido i
JOIN Pedidos p ON i.PedidoID = p.PedidoID
JOIN Clientes c ON p.ClienteID = c.ClienteID
JOIN Produtos pr ON i.ProdutoID = pr.ProdutoID;
