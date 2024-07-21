SELECT u.id AS uid, p.id AS pid, p.bio, u.first_name
FROM users AS u, profiles AS p
WHERE u.id = p.user_id;

SELECT u.id AS uid, p.id AS pid, p.bio, u.first_name
FROM users AS u
INNER JOIN  profiles AS p
ON u.id = p.user_id;


SELECT u.id AS uid, p.id AS pid, p.bio, u.first_name FROM users AS u
LEFT JOIN profiles AS p
ON u.id = p.user_id;


SELECT u.id AS uid, p.id AS pid, p.bio, u.first_name FROM users AS u
RIGHT JOIN profiles AS p
ON u.id = p.user_id
WHERE u.first_name LIKE '%a'
ORDER BY u.first_name ASC
LIMIT 10 OFFSET 0;

