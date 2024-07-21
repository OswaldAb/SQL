SELECT u.id AS uid, p.id AS pid, p.bio, u.first_name
FROM users AS u, profiles AS p
WHERE u.id = p.user_id;



SELECT u.id AS id_user, p.id AS id_profile, p.user_id foreign_key_user_profile, first_name, email
FROM users AS u, profiles AS p
WHERE u.id = p.user_id;




