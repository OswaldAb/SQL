
SELECT u.first_name, p.bio FROM users AS u
LEFT JOIN profiles AS p
ON u.id = p.user_id
WHERE u.first_name = 'Katelyn';

DELETE u FROM users AS u
LEFT JOIN profiles AS p
ON u.id = p.user_id
WHERE u.id = 82;
