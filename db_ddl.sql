
CREATE DATABASE base_de_dados; -- crinado base de dados

SHOW DATABASES; -- mostra todas as bases de dados

USE base_de_dados; -- selecionando base de dados que ira ser manipulada

CREATE TABLE users ( -- criado tabela no banco de dados
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NULL,
    email VARCHAR(255) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    CONSTRAINT users_un_email UNIQUE (email),
    CONSTRAINT users_un_password_hash UNIQUE (password_hash)
);

ALTER TABLE users
ADD create_at DATETIME DEFAULT CURRENT_TIMESTAMP() NOT NULL;

ALTER TABLE users
ADD update_at DATETIME DEFAULT NOW() ON UPDATE NOW() NOT NULL;

CREATE TABLE roles (
	id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    CONSTRAINT roles_pk_id PRIMARY KEY(id)
);

CREATE TABLE users_roles (
	user_id INTEGER NOT NULL,
    role_id INTEGER NOT NULL,
    CONSTRAINT users_roles_pk PRIMARY KEY (user_id, role_id),
    CONSTRAINT users_roles_user_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT users_roles_role_fk FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE profiles (
	id INTEGER NOT NULL AUTO_INCREMENT,
    bio TEXT NULL,
    description TEXT NULL,
    user_id INTEGER NULL,
    CONSTRAINT profiles_pk PRIMARY KEY (id),
    CONSTRAINT profiles_un UNIQUE (user_id),
    CONSTRAINT profiles_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE users_roles
ADD created_at DATETIME DEFAULT NOW() NOT NULL;

ALTER TABLE users_roles
ADD updated_at DATETIME DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP() NOT NULL;

SELECT * FROM users;
SELECT * FROM roles;

SELECT * FROM users_roles;
