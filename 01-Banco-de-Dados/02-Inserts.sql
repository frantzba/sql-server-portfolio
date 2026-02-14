INSERT INTO Clientes (ClienteID, Nome, Email, Telefone, DataCadastro)
VALUES 
(1, 'João Silva', 'joao@email.com', '11999999999', '2024-01-10'),
(2, 'Maria Souza', 'maria@email.com', '11888888888', '2024-02-15'),
(3, 'Pedro Lima', 'pedro@email.com', '11777777777', '2024-03-20');

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, Valor)
VALUES
(1, 1, '2024-04-01', 150.00),
(2, 1, '2024-04-05', 200.00),
(3, 2, '2024-04-10', 300.00);
