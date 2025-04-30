-- Criação das tabelas
CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2),
  estoque INT
);

CREATE TABLE pedidos (
  id INT PRIMARY KEY,
  produto_id INT,
  quantidade INT,
  data_pedido DATE,
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de dados em 'produtos'
INSERT INTO produtos (id, nome, preco, estoque) VALUES
(1, 'A Arte da Guerra', 29.90, 10),
(2, 'Dom Casmurro', 34.50, 8),
(3, '1984', 39.99, 5);

-- Inserção de dados em 'pedidos'
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES
(1, 1, 2, '2025-04-25'),
(2, 2, 1, '2025-04-26'),
(3, 3, 3, '2025-04-27');
