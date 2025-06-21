-- Criação da tabela Produtos
CREATE TABLE Produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(8,2) NOT NULL,
    estoque INT NOT NULL CHECK (estoque >= 0)
);

-- Criação da tabela Pedidos
CREATE TABLE Pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT NOT NULL,
    cliente VARCHAR(100) NOT NULL,
    data_pedido DATE NOT NULL,
    quantidade INT NOT NULL CHECK (quantidade > 0),
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

-- Inserção de dados
INSERT INTO Produtos (nome, descricao, preco, estoque) VALUES
('Café Espresso', 'Café espresso tradicional', 5.00, 50),
('Bolo de Cenoura', 'Bolo caseiro com cobertura de chocolate', 6.00, 20),
('Cookie Artesanal', 'Cookie artesanal com gotas de chocolate', 4.00, 30);

INSERT INTO Pedidos (produto_id, cliente, data_pedido, quantidade) VALUES
(1, 'João Silva', '2025-06-20', 2),
(2, 'Maria Oliveira', '2025-06-21', 1),
(3, 'Ana Pereira', '2025-06-21', 5);