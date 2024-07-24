SELECT u.first_name, p.bio FROM users AS u
INNER JOIN profiles AS p
ON u.id = p.user_id
WHERE u.first_name = 'Katelyn';

UPDATE users AS u
INNER JOIN profiles AS p
ON u.id = p.user_id
SET p.bio = CONCAT('Bio de ', u.first_name, ' foi atualizada')
WHERE u.first_name = 'Katelyn';
