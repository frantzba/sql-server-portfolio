CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    DataCadastro DATE
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    Valor DECIMAL(10,2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);
INSERT INTO Clientes VALUES
(1, 'João Silva', 'joao@email.com', '11999990001', '2024-01-10'),
(2, 'Maria Souza', 'maria@email.com', '11999990002', '2024-02-15'),
(3, 'Pedro Lima', 'pedro@email.com', '11999990003', '2024-03-20');

-- Inserindo dados na tabela Pedidos
INSERT INTO Pedidos VALUES
(1, 1, '2024-04-01', 200.00),
(2, 1, '2024-04-10', 150.00),
(3, 2, '2024-04-15', 300.00);
