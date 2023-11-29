CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

CREATE TABLE IF NOT EXISTS Livros(
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50),
    autor VARCHAR(50),
    ano_publicacao INT,
    genero VARCHAR(50),
    quantidade_disponivel INT
);

INSERT INTO Livros (titulo, autor, ano_publicacao, genero, quantidade_disponivel)
VALUES ('O código Da Vinci', 'Dan Brown', 2003, 'romance', 20);

INSERT INTO Livros (titulo, autor, ano_publicacao, genero, quantidade_disponivel)
VALUES ('Harry Potter e a Pedra Filosofal', 'J K Rowling', 1997, 'Fantasia', 50);

CREATE TABLE IF NOT EXISTS Usuarios(
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    cpf VARCHAR(50),
    email VARCHAR(50),
    telefone VARCHAR(50)
);

INSERT INTO Usuarios (nome, cpf, email, telefone)
VALUES ('Manoel', '12345678910', 'manoel@gmail.com', '912345678');

INSERT INTO Usuarios (nome, cpf, email, telefone)
VALUES ('Claudia', '12345678980', 'claudia@gmail.com', '942345678');

SHOW TABLES;

DESCRIBE Livros;
DESCRIBE Usuarios;

SELECT * FROM Livros;

UPDATE Livros SET genero = 'Romance' WHERE id_livro = 1;
