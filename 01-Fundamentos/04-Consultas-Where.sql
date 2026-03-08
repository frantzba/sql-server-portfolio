-- Clientes da cidade de Lisboa
SELECT *
FROM Clientes
WHERE Cidade = 'Lisboa';

-- Produtos com preço maior que 50
SELECT *
FROM Produtos
WHERE Preco > 50;

-- Pedidos feitos depois de 2024-01-11
SELECT *
FROM Pedidos
WHERE DataPedido > '2024-01-11';

-- Itens com quantidade maior que 1
SELECT *
FROM ItensPedido
WHERE Quantidade > 1;
