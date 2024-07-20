-- LIKE -> parecido
-- % -> qualquer coisa
-- _ -> apenas um caracter

SELECT * FROM users
WHERE first_name LIKE '%a'; -- qualquer coisa que termine com 'a'

SELECT * FROM users
WHERE first_name LIKE 'ar%'; -- qualquer coisa que começe com 'ar'

SELECT * FROM users
WHERE first_name LIKE 'a%o'; -- qualque coisa que começe com 'a' e termine com 'o'

SELECT * FROM users
WHERE first_name LIKE '%or%'; -- qualquer coisa que tenha os caracters 'or' juntos na palavra

SELECT * FROM users
WHERE first_name LIKE '%o%v%o';

SELECT * FROM users
WHERE first_name LIKE '_____';