-- Criação das tabelas

CREATE TABLE Produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(8,2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE Pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATE NOT NULL,
    cliente VARCHAR(100) NOT NULL,
    CONSTRAINT fk_produto FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

-- Inserção de registros na tabela Produtos

INSERT INTO Produtos (nome, descricao, preco, estoque) VALUES
('Café Espresso', 'Café espresso tradicional', 5.00, 50),
('Bolo de Cenoura', 'Bolo caseiro com cobertura de chocolate', 6.00, 20),
('Cookie Artesanal', 'Cookie feito artesanalmente com gotas de chocolate', 4.00, 30);

-- Inserção de registros na tabela Pedidos

INSERT INTO Pedidos (produto_id, quantidade, data_pedido, cliente) VALUES
(1, 2, '2025-06-20', 'João Silva'),
(2, 1, '2025-06-21', 'Maria Oliveira'),
(3, 5, '2025-06-21', 'Ana Pereira');
