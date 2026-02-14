SELECT * FROM Clientes;

SELECT * FROM Pedidos;

SELECT c.Nome, p.Valor
FROM Clientes c
INNER JOIN Pedidos p
    ON c.ClienteID = p.ClienteID;
