SELECT * FROM roles;
SELECT * FROM users;
SELECT * FROM users_roles;

INSERT INTO roles (name)
VALUES ('POST'), ('PUT'), ('DELETE'), ('GET');

INSERT INTO users_roles (user_id, role_id)
VALUES (1, 2);

SELECT user_id, role_id FROM users_roles
WHERE user_id = 1 AND role_id = 2;

SELECT id, (
SELECT id FROM roles
WHERE id = ROUND(RAND() * (1 - 4) + 4)
LIMIT 1
) FROM users;

SELECT ROUND (RAND() * (1 - 4) + 4);
SELECT ROUND(RAND() * -3 + 4);

SELECT id, (
SELECT id FROM roles
ORDER BY RAND()
LIMIT 1
) FROM users;


INSERT INTO users_roles (user_id, role_id)
SELECT id,
(SELECT id FROM roles ORDER BY RAND() LIMIT 1)
FROM users;




