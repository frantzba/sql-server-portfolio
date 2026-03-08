-- Desafio 1
-- Mostrar o nome do cliente e quantos pedidos ele fez

SELECT 
    Clientes.Nome,
    COUNT(Pedidos.PedidoID) AS TotalPedidos
FROM Clientes
INNER JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID
GROUP BY Clientes.Nome;
