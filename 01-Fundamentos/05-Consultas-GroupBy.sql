 Quantidade de pedidos por cliente
SELECT 
    ClienteID,
    COUNT(PedidoID) AS TotalPedidos
FROM Pedidos
GROUP BY ClienteID;

-- Quantidade total vendida por produto
SELECT 
    ProdutoID,
    SUM(Quantidade) AS TotalVendido
FROM ItensPedido
GROUP BY ProdutoID;

-- Número de pedidos por data
SELECT 
    DataPedido,
    COUNT(*) AS NumeroPedidos
FROM Pedidos
GROUP BY DataPedido;

-- Total de produtos vendidos por pedido
SELECT 
    PedidoID,
    SUM(Quantidade) AS TotalProdutos
FROM ItensPedido
GROUP BY PedidoID;
