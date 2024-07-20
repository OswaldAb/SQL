use base_de_dados;

SELECT id, first_name, email FROM users
WHERE id > 90;

SELECT id, first_name, email, created_at as 'Data_criacao' FROM users
WHERE id BETWEEN 90 AND 96
ORDER BY created_at ASC; -- ORDER BY nome_campo (ASC, DESC);