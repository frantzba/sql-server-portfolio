-- Desafio 4
-- Mostrar o cliente que fez mais pedidos

SELECT 
    Clientes.Nome,
    COUNT(Pedidos.PedidoID) AS TotalPedidos
FROM Clientes
INNER JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID
GROUP BY Clientes.Nome
ORDER BY TotalPedidos DESC;
