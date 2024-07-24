SELECT COUNT(first_name) AS total, first_name FROM users
GROUP BY first_name
ORDER BY total DESC;

SELECT u.first_name, COUNT(u.first_name) AS total FROM users AS u
LEFT JOIN profiles AS p
ON u.id = p.user_id
GROUP BY u.first_name
ORDER BY total DESC;