-- WHERE filtra registro
-- =, >, >=, <=, <, (!=, <>)
-- AND e OR

SELECT * FROM users
WHERE id = 3; -- onde id é igual a 3

SELECT * FROM users
WHERE first_name = "Osvaldo"; -- onde first_name == "Osvaldo"

SELECT * FROM users
WHERE id > 1; -- id é maior que 1

SELECT * FROM users
WHERE id <> 2; -- onde id é diferente de 2

SELECT * FROM users
WHERE created_at = '2024-07-18 21:10:55';

SELECT * FROM users
WHERE created_at >= '2024-07-18 21:10:55'
and first_name = 'Bruno';