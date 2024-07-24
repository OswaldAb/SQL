use base_de_dados;

SELECT * from users_roles;

SELECT u.id, u.first_name, r.id, r.name FROM users AS u
INNER JOIN users_roles AS ur
ON u.id = ur.user_id
INNER JOIN roles AS r
ON ur.role_id = r.id
ORDER BY u.id ASC;


INSERT IGNORE INTO users_roles (user_id, role_id)
SELECT id,(
SELECT id FROM roles ORDER BY RAND() LIMIT 1
) FROM users ORDER BY RAND() LIMIT 5;