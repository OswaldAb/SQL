DESCRIBE profiles;

SELECT * FROM profiles;

INSERT INTO profiles 
(bio, description, user_id)
SELECT 
CONCAT('Bio de ', first_name), 
CONCAT('Description de', ' ', first_name),
id 
FROM users;

DELETE FROM profiles WHERE id <> 1;
