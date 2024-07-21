ALTER TABLE users
ADD COLUMN salary DECIMAL(15, 2) NULL; -- adicionando coluna salario

-- RAND -> gera números aleatorios
-- ROUND -> arredonda números

SELECT ROUND(RAND() * 10000, 2);-- gera número aleatotios até 10000 com duas casas decimais

UPDATE users SET -- gera salarios aleatorios
salary = ROUND(RAND() * 10000, 2)
WHERE id <> 0;

SELECT salary FROM users
WHERE salary BETWEEN 1000 AND 1500
ORDER BY salary ASC;




