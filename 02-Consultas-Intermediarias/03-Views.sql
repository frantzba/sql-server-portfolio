-- View para mostrar pedidos com nome do cliente
CREATE VIEW vw_PedidosClientes AS
SELECT 
    Pedidos.PedidoID,
    Clientes.Nome,
    Pedidos.DataPedido
FROM Pedidos
INNER JOIN Clientes
ON Pedidos.ClienteID = Clientes.ClienteID;


-- View para mostrar produtos vendidos
CREATE VIEW vw_ProdutosVendidos AS
SELECT 
    Produtos.NomeProduto,
    ItensPedido.Quantidade
FROM ItensPedido
INNER JOIN Produtos
ON ItensPedido.ProdutoID = Produtos.ProdutoID;
