CREATE DATABASE example CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE example;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) comment 'Имя'
) comment = 'Пользователли';
