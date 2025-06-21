-- Criação das tabelas
CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL,
  estoque INT DEFAULT 0
);

CREATE TABLE pedidos (
  id INT PRIMARY KEY,
  data_pedido DATE NOT NULL,
  produto_id INT,
  quantidade INT NOT NULL,
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserções iniciais
INSERT INTO produtos (id, nome, preco, estoque) VALUES
(1, 'Café Espresso', 5.00, 50),
(2, 'Cappuccino', 8.00, 30),
(3, 'Brownie', 6.50, 20);

INSERT INTO pedidos (id, data_pedido, produto_id, quantidade) VALUES
(1, '2025-06-20', 1, 2),
(2, '2025-06-20', 3, 1),
(3, '2025-06-21', 2, 3);
