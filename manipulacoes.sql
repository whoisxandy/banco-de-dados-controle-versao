-- Atualizar preço de um produto
UPDATE produtos SET preco = 5.50 WHERE id = 1;

-- Remover um pedido
DELETE FROM pedidos WHERE id = 2;

-- Consulta de pedidos com nome dos produtos
SELECT pedidos.id, produtos.nome, pedidos.quantidade, pedidos.data_pedido
FROM pedidos
JOIN produtos ON pedidos.produto_id = produtos.id;

-- Consulta de produtos com estoque maior que 10
SELECT * FROM produtos WHERE estoque > 10;
