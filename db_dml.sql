-- DATA MANIPULATION LANGUAGE

USE base_de_dados; -- Usa base de dados

SHOW TABLES; -- Mostra as tabelas da base de dados

DESCRIBE users; -- Descreve as colunas da tabela

INSERT INTO users (first_name, email, password_hash)  -- Inserindo um registro
VALUES ("Osvaldo", "osvaldo@gmail.com", "senha");

INSERT INTO users (first_name, email, password_hash) -- Inserindo mais de um registro
VALUES 
("Rogerio", "rogerio@gmail.com", "rogerio123"),
("Bruno", "bruno@gmail.com", "bruno123");

SELECT * FROM users;