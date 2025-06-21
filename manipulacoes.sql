-- Atualizar preço de um produto
UPDATE Produtos
SET preco = 5.50
WHERE nome = 'Café Espresso';

-- Atualizar estoque após um pedido
UPDATE Produtos
SET estoque = estoque - 2
WHERE id = 1;

-- Remover um pedido
DELETE FROM Pedidos
WHERE id = 2;

-- Consultar todos os pedidos com nome do produto
SELECT Pedidos.id, Produtos.nome AS produto, cliente, data_pedido, quantidade
FROM Pedidos
JOIN Produtos ON Pedidos.produto_id = Produtos.id;

-- Consultar produtos com estoque abaixo de 10
SELECT * FROM Produtos
WHERE estoque < 10;