
SELECT * FROM users
WHERE created_at > '2021-06-12 00:11:24'
AND created_at < '2021-12-01 12:04:13';

SELECT * FROM users
WHERE created_at BETWEEN '2021-06-12 00:11:24' AND '2021-12-01 12:04:13'
AND id BETWEEN 20 AND 30;

SELECT * FROM users
WHERE id = 21 OR id = 50 OR id = 73;

SELECT * FROM users
WHERE id in (21, 50, 73, 80, 95, 105, 120)
AND first_name in ('Iona', 'Osvaldo');