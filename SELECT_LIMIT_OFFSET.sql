-- LIMIT -> limita a qtd de valores
-- OFFSET -> desloca o cursor para exibir os resultados

SELECT id, first_name, email FROM users
WHERE id BETWEEN 90 AND 100
ORDER BY id DESC
LIMIT 5;

SELECT id, first_name, email FROM users
WHERE id BETWEEN 90 AND 100
ORDER BY id ASC
LIMIT 2 OFFSET 0; -- => LIMIT 0, 2;