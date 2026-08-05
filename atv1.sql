-- Questão 1 - Criando tabelas e inserindo dados
CREATE TABLE Categorias (
  id INT PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Produtos (
  id INT PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Preco DECIMAL(10,2) NOT NULL,
  categoria_id INT,
  FOREIGN KEY (categoria_id) REFERENCES Categorias(id)
);

INSERT INTO Categorias(id, Nome) VALUES(1, 'Eletrônicos');
INSERT INTO Categorias(id, Nome) VALUES(2, 'Vestuário');
INSERT INTO Categorias(id, Nome) VALUES(3, 'Alimentos');

INSERT INTO Produtos(id, Nome, Preco, categoria_id) VALUES(101, 'Computador', 10000.00, 1);
INSERT INTO Produtos(id, Nome, Preco, categoria_id) VALUES(102, 'Camisa Masculina Branca', 39.70, 2);
INSERT INTO Produtos(id, Nome, Preco, categoria_id) VALUES(103, 'Maçã', 8.50, 3);
INSERT INTO Produtos(id, Nome, Preco, categoria_id) VALUES(104, 'Celular', 986.90, 1);
INSERT INTO Produtos(id, Nome, Preco, categoria_id) VALUES(105, 'SmartWatch', 40.00, 1);

-- Questão 2 - Selecionando produtos acima de 50
SELECT * FROM Produtos WHERE Preco > 50;

-- Questão 3 - Usando Join para ordenar tabela
SELECT Produtos.Nome AS Produto, Categorias.Nome AS Categoria FROM Produtos 
JOIN Categorias ON Produtos.categoria_id = Categorias.id
ORDER BY Produtos.Nome;
