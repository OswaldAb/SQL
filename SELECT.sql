
use base_de_dados; -- Usa base de dados

SHOW TABLES; -- mostra as tabela da base de dados

DESCRIBE users; -- descreve a tabela usrs

SELECT * FROM users; -- selecionando totos campos

SELECT first_name, email FROM users; -- selecionando campos especificos

SELECT u.first_name, u.email FROM users AS u -- Selecionando campos utilizando alias