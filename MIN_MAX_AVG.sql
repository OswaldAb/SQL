SELECT 
MAX(salary) AS maximo,
MIN(salary) AS minimo,
AVG(salary) AS media,
SUM(salary) AS soma,
COUNT(salary) AS registros
-- (SUM(salary) / COUNT(salary))
FROM users
WHERE first_name = 'Carly';

SELECT * FROM users
WHERE first_name = 'Carly';
