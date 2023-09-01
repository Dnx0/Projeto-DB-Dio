-- Recupera todos os livros da loja
SELECT * FROM livro;

-- Recupera todos os livros de um autor específico
SELECT * FROM livro WHERE autor_id = 1;

-- Recupera todos os livros de uma categoria específica
SELECT * FROM livro WHERE categoria_id = 2;

-- Recupera todos os livros publicados após 2000
SELECT * FROM livro WHERE ano_lancamento > 2000;

-- Calcula o preço total de todos os livros de uma categoria específica
SELECT categoria_id, SUM(preco) AS Totalpreco
FROM livro
WHERE categoria_id = 1
GROUP BY categoria_id;

-- Lista todos os livros ordenados por título em ordem alfabética
SELECT * FROM livro
ORDER BY Title;

-- Lista as categorias com a média de preços dos livros acima de $20
SELECT categoria_id, AVG(preco) AS Avgpreco
FROM livro
GROUP BY categoria_id
HAVING AVG(preco) > 20;

