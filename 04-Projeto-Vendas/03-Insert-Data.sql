INSERT INTO Clientes (Nome, Email, Cidade)
VALUES
('João Silva', 'joao@email.com', 'São Paulo'),
('Maria Souza', 'maria@email.com', 'Rio de Janeiro');

INSERT INTO Produtos (Nome, Preco)
VALUES
('Notebook', 3500.00),
('Mouse', 50.00);

INSERT INTO Pedidos (ClienteID, DataPedido)
VALUES
(1, GETDATE()),
(2, GETDATE());

INSERT INTO ItensPedido (PedidoID, ProdutoID, Quantidade)
VALUES
(1, 1, 1),
(1, 2, 2),
(2, 2, 3);
