-- Mostrar pedidos com nome do cliente
SELECT 
    Pedidos.PedidoID,
    Clientes.Nome,
    Pedidos.DataPedido
FROM Pedidos
INNER JOIN Clientes
ON Pedidos.ClienteID = Clientes.ClienteID;

-- Mostrar produtos vendidos em cada pedido
SELECT 
    Pedidos.PedidoID,
    Produtos.NomeProduto,
    ItensPedido.Quantidade
FROM ItensPedido
INNER JOIN Produtos
ON ItensPedido.ProdutoID = Produtos.ProdutoID
INNER JOIN Pedidos
ON ItensPedido.PedidoID = Pedidos.PedidoID;

-- Mostrar cliente, produto e quantidade comprada
SELECT 
    Clientes.Nome,
    Produtos.NomeProduto,
    ItensPedido.Quantidade
FROM ItensPedido
INNER JOIN Produtos
ON ItensPedido.ProdutoID = Produtos.ProdutoID
INNER JOIN Pedidos
ON ItensPedido.PedidoID = Pedidos.PedidoID
INNER JOIN Clientes
ON Pedidos.ClienteID = Clientes.ClienteID;
