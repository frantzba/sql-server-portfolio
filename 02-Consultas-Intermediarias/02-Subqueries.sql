-- Clientes que fizeram pedidos
SELECT Nome
FROM Clientes
WHERE ClienteID IN (
    SELECT ClienteID
    FROM Pedidos
);

-- Produtos que foram vendidos
SELECT NomeProduto
FROM Produtos
WHERE ProdutoID IN (
    SELECT ProdutoID
    FROM ItensPedido
);

-- Pedidos que possuem mais de um item
SELECT PedidoID
FROM ItensPedido
GROUP BY PedidoID
HAVING COUNT(*) > 1;
