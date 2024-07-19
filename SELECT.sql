
use base_de_dados;

SHOW TABLES;

DESCRIBE users;

SELECT u.email, u.id, u.first_name AS Nome
FROM users AS u;