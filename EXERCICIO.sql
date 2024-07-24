INSERT INTO users (first_name, email, password_hash)
VALUES
('OsSCvaldo', 'SCS@gCmaiSl.com', 'SRVCC'),
('MigDCuel', 'CV@gVVmail.com', 'migVuCel123'),
('JSaqCueline', 'jaquCeline@gmail.com', 'jaquCSelVine123'),
('MaCrDia', 'maria@gmCailCS.com', 'mCarSVia123'),
('LCCana', 'lana@gmCCaiCl.com', 'lSanCa123');

INSERT INTO profiles (user_id)
SELECT id FROM users
ORDER BY RAND()
LIMIT 1;

UPDATE profiles AS p
INNER JOIN users AS u
ON u.id = p.user_id
SET p.bio = CONCAT('bio de ', u.first_name)
WHERE u.id = p.user_id;

INSERT IGNORE INTO users_roles(user_id, role_id)
SELECT id AS uid,
(SELECT id FROM roles ORDER BY RAND() LIMIT 1) AS rid
FROM users;

SELECT * FROM users
ORDER BY id DESC
LIMIT 5;

UPDATE users
SET first_name = 'Amanda'
ORDER BY id DESC
LIMIT 1;

DELETE FROM users_roles
WHERE user_id = 1 AND
role_id = 3;

-- SELECT u.first_name, ur.user_id, ur.role_id, r.name FROM users AS u
DELETE u FROM users AS u
RIGHT JOIN users_roles AS ur
ON u.id = ur.user_id
RIGHT JOIN roles AS r
ON ur.role_id = r.id
WHERE r.name = 'PUT' AND 
ur.user_id = 5 AND ur.role_id = 2;

SELECT * FROM users
WHERE first_name = 'Lana';

SELECT u.id, u.first_name, p.bio, r.name  FROM users AS u
RIGHT JOIN profiles AS p
ON  u.id = p.user_id
RIGHT JOIN users_roles AS ur
ON u.id = ur.user_id
RIGHT JOIN roles AS r
ON ur.role_id = r.id
ORDER BY u.id;

SELECT u.first_name, p.bio, r.name FROM users AS u
LEFT JOIN profiles AS p
ON u.id = p.user_id
LEFT JOIN users_roles AS ur
ON u.id = ur.user_id
LEFT JOIN roles AS r
ON ur.role_id = r.id;
 
SELECT u.first_name, p.bio, r.name, u.salary FROM users AS u
LEFT JOIN profiles AS p
ON u.id = p.user_id
LEFT JOIN users_roles AS ur
ON u.id = ur.user_id
LEFT JOIN roles AS r
ON ur.role_id = r.id
ORDER BY salary;


