-- Desafio 6
-- Mostrar o número de pedidos feitos em cada data

SELECT 
    DataPedido,
    COUNT(PedidoID) AS TotalPedidos
FROM Pedidos
GROUP BY DataPedido
ORDER BY DataPedido;
