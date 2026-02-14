SELECT c.Nome, SUM(p.Valor) AS TotalGasto
FROM Clientes c
INNER JOIN Pedidos p
    ON c.ClienteID = p.ClienteID
GROUP BY c.Nome;

SELECT c.Nome, COUNT(p.PedidoID) AS QuantidadePedidos
FROM Clientes c
LEFT JOIN Pedidos p
    ON c.ClienteID = p.ClienteID
GROUP BY c.Nome;
