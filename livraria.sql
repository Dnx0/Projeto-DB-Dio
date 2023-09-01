-- Criação da tabela "autor"
CREATE TABLE autor (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    nascimento DATE
);

-- Criação da tabela "categoria"
CREATE TABLE categoria (
    id INT PRIMARY KEY,
    nome VARCHAR(255)
);

-- Criação da tabela "livro"
CREATE TABLE livro (
    id INT PRIMARY KEY,
    titulo VARCHAR(255),
    autor_id INT,
    categoria_id INT,
    ano_lancamento INT,
    preco DECIMAL(10, 2),
    FOREIGN KEY (autor_id) REFERENCES autor(id),
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

-- Tabela de associação entre "autor" e "livro"
CREATE TABLE autor_livro (
    autor_id INT,
    livro_id INT,
    FOREIGN KEY (autor_id) REFERENCES autor(id),
    FOREIGN KEY (livro_id) REFERENCES livro(id)
);

-- Tabela de associação entre "categoria" e "livro"
CREATE TABLE categoria_livro (
    categoria_id INT,
    livro_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id),
    FOREIGN KEY (livro_id) REFERENCES livro(id)
);
