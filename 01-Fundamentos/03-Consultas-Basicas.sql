-- Ver todos os clientes
SELECT * FROM Clientes;

-- Ver todos os produtos
SELECT * FROM Produtos;

-- Ver pedidos com nome do cliente
SELECT 
    Pedidos.PedidoID,
    Clientes.Nome,
    Pedidos.DataPedido
FROM Pedidos
INNER JOIN Clientes
ON Pedidos.ClienteID = Clientes.ClienteID;

-- Ver produtos comprados em cada pedido
SELECT 
    Pedidos.PedidoID,
    Produtos.NomeProduto,
    ItensPedido.Quantidade
FROM ItensPedido
INNER JOIN Produtos
ON ItensPedido.ProdutoID = Produtos.ProdutoID
INNER JOIN Pedidos
ON ItensPedido.PedidoID = Pedidos.PedidoID;
