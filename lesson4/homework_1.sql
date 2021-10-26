DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;


CREATE TABLE users(
	id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	firstname VARCHAR(50) NOT NULL,
	lastname VARCHAR(50) NOT NULL,
	phone CHAR(11) NOT NULL,
	email VARCHAR(120) UNIQUE,
	password_hash CHAR(65),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	INDEX (lastname),
	INDEX (phone)
);
ALTER TABLE users ADD CONSTRAINT CHECK(phone RLIKE'^[0-9]{11}$');


INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('1', 'Jarred', 'Von', '80474806926', 'kcrist@example.com', '3c87d06395877b52f601f76dfc800e6067166da5', '1994-02-23 07:07:42', '2014-01-14 20:23:16');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('2', 'Annabelle', 'Reichert', '89300244892', 'terence.wisozk@example.net', 'cf9305292f227b7b536d6908a330a4a80d865fdf', '1973-12-16 19:55:50', '1972-02-23 17:34:11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('3', 'Bell', 'Kerluke', '80699293948', 'lorenz.kuhn@example.net', '851a9fdb768843285f5898ddec460878f5dce2d1', '1996-10-17 10:59:56', '1975-02-03 13:16:27');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('4', 'Gregoria', 'Rodriguez', '88115833955', 'delfina43@example.com', '66f2f988b4d8a221b52a99d00efcd9927ec65b60', '1998-03-27 17:11:10', '2006-02-24 04:25:17');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('5', 'Mauricio', 'Bins', '81228060498', 'vmcdermott@example.org', 'e1187b25bea7a4c9d2d5d7415184d3fa292cfb18', '2018-05-08 13:45:43', '1971-11-20 18:11:02');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('6', 'Thelma', 'Rice', '80352159137', 'erdman.cesar@example.net', '9782c5eb5d7fa30ee8080d54242aa3146059f4a7', '1979-04-17 07:56:14', '1990-09-28 09:16:44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('7', 'Aryanna', 'Nader', '85149325318', 'viviane.dach@example.org', '9e854efd0f12a46695d732df73f1bf66f6d44999', '2013-03-20 00:16:46', '1978-11-18 21:09:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('8', 'Ransom', 'Schulist', '84548182254', 'champlin.destiny@example.net', '8c9b8463351e818a6b164152244b9682c7032ef8', '1981-05-05 13:21:18', '2013-01-20 15:41:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('9', 'Friedrich', 'Hickle', '80315109803', 'kovacek.cory@example.com', '3cf4ed440044dba0e1c3519adab1aea9b876c7b9', '2012-01-21 10:23:17', '2002-07-15 07:00:12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('10', 'Iliana', 'Monahan', '89851577794', 'waelchi.richmond@example.net', 'e87d23347c8525e2abeda003d2d3a742ff59d0e6', '2005-04-28 01:31:34', '1989-12-23 20:47:49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('11', 'Marlene', 'Grant', '89125256626', 'mmedhurst@example.org', 'b6645d4341a8ca1767727a174e882e6a2f47e74e', '1971-03-08 08:24:43', '1995-09-08 22:39:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('12', 'Karelle', 'Zboncak', '85083093573', 'laurine.cronin@example.com', '11b0f350b0578b9334efbcf7a2263e6d16e34987', '1976-12-14 23:24:29', '2002-12-10 03:59:38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('13', 'Avery', 'McClure', '85275058411', 'jamaal74@example.org', '386e3a9a5c20b67b74767479fdcab7d5e680bbf1', '1989-02-08 01:57:09', '1980-02-27 06:00:54');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('14', 'Cassandre', 'Schmitt', '88423228650', 'jaiden08@example.org', 'd0018706f724b80fb712bf24217c736ae0f18ecd', '1987-12-09 09:16:48', '2010-06-24 05:06:47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('15', 'Nico', 'Mante', '82189220055', 'elnora74@example.com', '2cdb6b640170774b6f558bd03175ef40a6fb5b02', '1991-04-04 04:15:51', '1993-05-09 20:22:38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('16', 'Trace', 'Bayer', '81908515854', 'pschmeler@example.org', '09668d407036b1b7cfa51b10ac1447bb0b397612', '2006-03-09 21:15:12', '1975-04-24 06:09:59');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('17', 'Jamel', 'Wintheiser', '82979486379', 'xfarrell@example.com', '5f3c54b75e977788efcb6a997e2a2f5b0b411d75', '1981-07-15 01:18:14', '2005-08-18 14:36:18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('18', 'Kali', 'Beer', '80166806816', 'jaleel87@example.com', '8c57ce5a5cc815a56955f8fc9c7e32a897577354', '2011-04-20 13:49:39', '1976-09-14 04:32:04');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('19', 'Francisco', 'Bartell', '84764589760', 'loy32@example.net', '3b319852d3cf7ab7b692131736a4f63a10fb80d1', '2012-06-17 16:28:26', '2011-09-21 08:37:16');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES ('20', 'Beulah', 'Feil', '83355481945', 'anderson.kirk@example.com', 'ea86a2bd47b8ae0db1e2ef9957334bbb6f50d743', '1980-10-18 12:02:34', '1972-04-11 03:25:15');



CREATE TABLE media_types(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(45) NOT NULL UNIQUE -- изображение, музыка, документ
);


INSERT INTO `media_types` (`id`, `name`) VALUES (4, ' doc');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, ' music');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, ' video');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'photo');


CREATE TABLE media(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	media_types_id INT UNSIGNED NOT NULL,
	file_name VARCHAR(255),
	file_size BIGINT UNSIGNED,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	INDEX media_users_idx (user_id),
	FOREIGN KEY (media_types_id) REFERENCES media_types (id),
	FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('1', '1', 1, 'ut', '1205', '2017-02-01 20:54:56');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('2', '2', 2, 'magnam', '6955', '1996-08-14 08:15:20');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('3', '3', 3, 'sed', '823982', '1980-02-06 14:32:50');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('4', '4', 4, 'quos', '654', '1980-02-29 08:26:11');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('5', '5', 1, 'sunt', '3483708', '2004-03-18 09:11:09');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('6', '6', 2, 'voluptate', '65', '1982-02-07 01:53:14');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('7', '7', 3, 'eos', '722', '2003-08-10 00:48:09');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('8', '8', 4, 'enim', '399234', '2021-05-01 13:30:42');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('9', '9', 1, 'doloribus', '0', '1970-10-11 18:02:46');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('10', '10', 2, 'autem', '222051023', '1991-10-15 14:30:05');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('11', '11', 3, 'ea', '6278', '2008-04-08 19:23:02');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('12', '12', 4, 'qui', '79477', '2020-01-06 05:35:24');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('13', '13', 1, 'dolores', '4898', '2020-07-26 10:09:43');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('14', '14', 2, 'incidunt', '903', '1985-08-31 04:34:40');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('15', '15', 3, 'voluptatum', '566336060', '1998-06-15 21:49:23');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('16', '16', 4, 'reprehenderit', '64', '2016-09-15 03:20:14');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('17', '17', 1, 'harum', '75', '1994-06-27 20:15:29');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('18', '18', 2, 'est', '720184747', '1987-08-31 19:14:02');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('19', '19', 3, 'accusantium', '36748258', '2000-02-20 16:15:43');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('20', '20', 4, 'deleniti', '99006', '2019-06-12 19:55:01');



CREATE TABLE profiles(
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
	gender ENUM('f', 'm', 'x') NOT NULL,
	birthday DATE NOT NULL,
	photo_id BIGINT UNSIGNED NOT NULL UNIQUE,
    is_active BOOL DEFAULT TRUE,
	city VARCHAR(130),
  	country VARCHAR(130),
  	FOREIGN KEY (user_id) REFERENCES users (id)
);
ALTER TABLE profiles ADD CONSTRAINT fk_profiles_media FOREIGN KEY (photo_id) REFERENCES media (id);


INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('1', 'f', '1996-07-28', '1', 'Port Christoptown', 'Bangladesh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('2', 'm', '1973-05-24', '2', 'Port Elenoraview', 'Guam');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('3', 'x', '1977-07-27', '3', 'Willstad', 'Saint Helena');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('4', 'm', '2007-02-07', '4', 'Funkstad', 'Kazakhstan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('5', 'm', '1974-01-12', '5', 'Tremblaychester', 'Syrian Arab Republic');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('6', 'm', '2007-11-11', '6', 'New Nakia', 'Solomon Islands');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('7', 'f', '2008-04-11', '7', 'Haleyshire', 'Dominica');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('8', 'x', '1976-03-26', '8', 'Denaburgh', 'Mexico');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('9', 'x', '1973-04-14', '9', 'New Amanda', 'New Zealand');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('10', 'f', '1996-09-26', '10', 'Ebbaberg', 'Western Sahara');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('11', 'f', '1971-02-05', '11', 'Lake Jimmy', 'Moldova');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('12', 'f', '1997-06-25', '12', 'East Libby', 'Slovakia (Slovak Republic)');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('13', 'm', '1980-07-18', '13', 'West Mayfort', 'Fiji');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('14', 'x', '1989-04-27', '14', 'New Jaceyhaven', 'Greenland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('15', 'm', '1995-05-11', '15', 'Aurelioland', 'Croatia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('16', 'x', '2003-10-27', '16', 'Millerview', 'Puerto Rico');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('17', 'm', '1984-01-25', '17', 'Cornellstad', 'Guinea-Bissau');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('18', 'm', '1995-09-24', '18', 'Edstad', 'Antigua and Barbuda');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('19', 'x', '2006-12-01', '19', 'Genevievefurt', 'Greenland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('20', 'x', '1978-10-15', '20', 'Noeliaborough', 'Togo');


CREATE TABLE messages(
	id SERIAL PRIMARY KEY,  -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	body TEXT,
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	is_delivered BOOLEAN DEFAULT FALSE, 
	FOREIGN KEY (from_user_id) REFERENCES users (id),
	FOREIGN KEY (to_user_id) REFERENCES users (id)
);


INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('1', '1', '1', 'Enim ab repellat veniam fugiat est doloribus ex. Laboriosam sunt doloribus dolore explicabo omnis asperiores.', '1979-03-10 12:21:53', '1992-05-21 23:36:02', 0);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('2', '2', '2', 'Repudiandae deleniti non eveniet quis. Non iusto ipsam libero aliquam quae voluptas aut. Consequatur eum corrupti esse occaecati sint sed consequuntur qui.', '2018-06-26 11:06:43', '2019-10-31 15:19:41', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('3', '3', '3', 'In aut officia et qui atque modi. Explicabo pariatur reprehenderit quae vel et. Voluptatem omnis accusantium dolor voluptatum repudiandae. Velit modi quis non ex qui quibusdam.', '1971-12-29 07:19:46', '1990-05-09 05:15:20', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('4', '4', '4', 'Doloribus et odio incidunt sit et minus. Possimus beatae consectetur earum cumque velit est maxime modi. Aspernatur unde unde eligendi culpa. Et nostrum facere quas perferendis quod qui veritatis.', '1983-02-11 17:51:25', '1982-06-03 22:08:43', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('5', '5', '5', 'Suscipit dolorem aut porro est. Quos sapiente et et. Eligendi aut maxime consequuntur sit laboriosam nesciunt.', '2017-09-18 05:30:46', '1970-03-03 12:41:21', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('6', '6', '6', 'Explicabo sit aut ut voluptas eaque ullam. Occaecati aliquam atque autem. Laboriosam perferendis corporis nobis et ipsum similique.', '2017-07-26 09:40:18', '2016-08-25 07:06:42', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('7', '7', '7', 'Nesciunt est repellendus doloribus. Asperiores optio quaerat labore quibusdam similique. Quidem quaerat nemo et praesentium exercitationem.', '1985-08-07 01:13:52', '2001-06-03 14:34:17', 0);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('8', '8', '8', 'Atque officiis sapiente est non. Saepe cupiditate aut vitae aut quam inventore. Sapiente ex debitis possimus. Dolores qui illo aut.', '1981-03-28 04:37:25', '2016-12-20 09:57:47', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('9', '9', '9', 'Maiores est accusantium rerum autem sed. Et id earum occaecati voluptatem corrupti ut a. Incidunt tempore enim esse.', '2015-03-17 07:49:11', '2015-07-27 15:38:38', 0);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('10', '10', '10', 'Voluptatum aperiam fuga est. Debitis culpa eos minima quas tenetur doloremque. Quaerat modi rerum ex doloremque illo aut. Sit nisi voluptatem deleniti et.', '2014-12-27 05:50:32', '2007-12-06 03:09:15', 0);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('11', '11', '11', 'Corporis ratione quo aut et debitis. Officiis dolor fuga voluptatem laborum possimus.', '1984-06-09 19:57:56', '1995-01-12 19:44:43', 0);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('12', '12', '12', 'Inventore nam omnis aliquam eveniet in debitis laborum. Necessitatibus tempore quo esse qui ipsum. Sit nesciunt quod atque iusto.', '1988-01-02 14:21:20', '2003-11-22 19:28:40', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('13', '13', '13', 'Ut eum ducimus voluptatibus nobis asperiores numquam quis eum. Quia aut consectetur sequi et ipsam consequatur. Omnis ut vitae aut rerum facilis voluptas.', '1975-05-12 04:00:59', '1988-02-07 17:10:54', 0);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('14', '14', '14', 'Fugit commodi magnam sed ea est eos. Et perspiciatis quia molestiae deleniti sed accusantium. Excepturi ut suscipit omnis omnis ut eum. Cum libero nihil quam molestiae.', '1997-12-29 11:14:47', '1978-11-05 08:22:36', 0);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('15', '15', '15', 'Quisquam facere repudiandae earum. Rem vel consectetur delectus odio qui. Error sed eum molestiae enim. Eaque iste aut vero in autem quidem modi iure.', '1994-10-13 19:35:49', '2013-06-21 05:00:24', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('16', '16', '16', 'Necessitatibus deserunt dignissimos quidem est minima sapiente nisi. Nemo voluptatem tempore est voluptates maiores cumque exercitationem. Dolorem totam quae sunt numquam.', '2017-05-27 21:53:12', '1999-09-25 06:54:54', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('17', '17', '17', 'Doloribus possimus qui quia atque voluptates quo nam. Et accusantium eum et dignissimos. Praesentium qui ducimus sequi et quae.', '1970-07-20 13:14:15', '2010-08-28 17:53:20', 0);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('18', '18', '18', 'Nihil placeat nobis nemo voluptate autem iure. Autem molestias ex ipsam suscipit similique quo labore quasi. Enim accusamus quasi nisi est.', '2007-05-10 06:07:59', '2007-12-07 23:04:59', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('19', '19', '19', 'Quia laborum repellendus voluptatem et non. Aut voluptatem enim quis dicta voluptatibus rerum. Rerum alias totam animi magni. Sunt animi eaque et natus aliquid ut consequatur. Maiores aut quia quas deserunt dicta possimus et.', '2011-04-06 16:54:42', '1994-11-12 06:47:12', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `updated_at`, `is_delivered`) VALUES ('20', '20', '20', 'Quaerat suscipit quia dicta magnam deserunt. Deserunt nostrum a at ad molestiae earum.', '1995-10-10 02:09:34', '2008-11-22 09:15:20', 1);


CREATE TABLE friend_requests(
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	accepted BOOL DEFAULT FALSE,
	PRIMARY KEY (from_user_id, to_user_id),
	FOREIGN KEY (from_user_id) REFERENCES users (id),
	FOREIGN KEY (to_user_id) REFERENCES users (id)
);
ALTER TABLE friend_requests ADD CONSTRAINT CHECK(from_user_id != to_user_id);


INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('1', '2', '1');
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('1', '3', '0');
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('1', '4', '1');
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('1', '5', '1');
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('2', '3', '1');
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('2', '4', '1');
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('2', '5', '1');
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('2', '6', '0');
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('3', '7', '1');
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('3', '8', '1');
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('3', '9', '1');
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('3', '10', '0');

CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(145) NOT NULL,
	description VARCHAR(255),
	admin_id BIGINT UNSIGNED NOT NULL,
	INDEX communities_name_idx (name),
	CONSTRAINT fk_communities_admin_id FOREIGN KEY (admin_id) REFERENCES users (id) ON UPDATE CASCADE ON DELETE CASCADE
);


INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('1', 'suscipit', 'Nihil facere veritatis veritatis quos labore nesciunt dolores quis. Ex aut ad minima velit et. Quidem dolore est est quia.', '1');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('2', 'ex', 'Eius quasi delectus culpa voluptatibus eius fuga. Iusto labore unde et sit velit id quis aut.', '2');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('3', 'quas', 'Dolores eligendi quo sed eos nihil voluptate. Sequi similique magnam repudiandae soluta ea tempora sint in. Autem soluta vel veritatis quasi officia.', '3');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('4', 'blanditiis', 'Est tenetur eum similique consequuntur qui. Dolorem aut eius dolor. Et expedita perferendis eaque aspernatur aut voluptatem. Et voluptas provident rerum aliquid.', '4');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('5', 'sed', 'Itaque deserunt cum sint ut ut voluptatibus porro. Nisi consequuntur quaerat recusandae earum. Quos esse non id qui. Molestiae maiores sit molestias ea nam provident dolor minima.', '5');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('6', 'eius', 'Ut corrupti ipsam totam quia voluptatem voluptatum voluptates est. Illum labore maiores nobis qui culpa vel magni. Officia sit molestias temporibus architecto omnis quo. In et nihil rerum placeat.', '6');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('7', 'sed', 'Adipisci dolore nobis eos ex soluta ut. Quis nam rerum omnis dolore id. Sed itaque nam voluptatem vel dolor non. Sequi suscipit iusto et est vitae.', '7');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('8', 'molestias', 'Minima amet amet beatae velit similique. Velit laudantium omnis repellendus deserunt nihil laborum magnam nostrum. Provident et sed autem omnis et. Ipsam sit voluptatem cupiditate ut accusantium.', '8');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('9', 'dignissimos', 'Amet deserunt autem ut ipsum quaerat minus. Aut sit ex aut odit ipsam libero quam. Iure tenetur molestias odio iste. Possimus sequi impedit earum.', '9');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('10', 'sequi', 'Delectus nostrum fugit aut consequuntur minima. Fuga ipsa officia voluptatibus libero iste voluptas. Et atque velit qui saepe similique.', '10');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('11', 'earum', 'Voluptate omnis at modi id et tenetur maxime. Similique voluptatibus fuga qui amet a eaque.', '11');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('12', 'magnam', 'Quisquam ea rerum iusto inventore. Voluptatem voluptatem voluptatem perferendis eos facilis. Accusantium dicta ut deleniti dolorem molestiae natus laborum.', '12');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('13', 'id', 'Corporis quia asperiores quis error ullam. Quasi quod placeat delectus. Tempore modi velit dolores nam exercitationem non quasi. Quo ipsa totam ut perferendis totam ea.', '13');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('14', 'incidunt', 'In tempore voluptatibus neque est eos qui et. Maiores earum tempore enim quia et. Optio aut nemo voluptatem consequatur odio error maiores.', '14');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('15', 'eos', 'Provident sed fugit facere tempore vero. Ut sunt sapiente dolores beatae. Veniam dolorem ea ipsa eos sunt ducimus.', '15');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('16', 'et', 'At earum aut quia natus quaerat sit quibusdam. Omnis quas pariatur aut facere. Explicabo ea ut saepe repellat.', '16');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('17', 'aut', 'Distinctio nemo voluptatem adipisci est ea sed. Nam illum enim nihil nihil nihil. Ut enim similique at natus iusto. Tempore eaque corrupti cupiditate delectus nesciunt quod praesentium.', '17');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('18', 'voluptatem', 'Quibusdam consequatur id nesciunt animi ut iure magni ut. Quibusdam in similique molestiae. Expedita perferendis adipisci cupiditate eos vero libero. Explicabo iusto ipsa totam et at. Consequuntur quo et aut sit cumque magni ex illum.', '18');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('19', 'alias', 'Consequatur ut praesentium est in. Voluptatem sed et impedit quis consequatur accusantium dolorem. Quidem qui reprehenderit dolorem odit sint eveniet. Beatae repudiandae delectus id.', '19');
INSERT INTO `communities` (`id`, `name`, `description`, `admin_id`) VALUES ('20', 'minima', 'Voluptatibus quisquam inventore qui nobis. Cumque alias corrupti distinctio dolorem. Neque nihil ut quo. Quam minus non quo.', '20');


CREATE TABLE communities_users(
	community_id BIGINT UNSIGNED NOT NULL,
	user_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY(community_id, user_id),
	FOREIGN KEY (community_id) REFERENCES communities (id),
	FOREIGN KEY (user_id) REFERENCES users (id)
);


INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('1', '1');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('2', '2');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('3', '3');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('4', '4');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('5', '5');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('6', '6');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('7', '7');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('8', '8');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('9', '9');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('10', '10');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('11', '11');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('12', '12');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('13', '13');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('14', '14');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('15', '15');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('16', '16');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('17', '17');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('18', '18');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('19', '19');
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES ('20', '20');


-- Локация объявления пользователя
CREATE TABLE advert_location (
    id SERIAL PRIMARY KEY,
	city VARCHAR(130),
  	country VARCHAR(130)
);


INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('1', 'Shemarhaven', 'Portugal');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('2', 'Joycebury', 'Western Sahara');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('3', 'Port Myrticebury', 'Korea');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('4', 'Amieland', 'Nicaragua');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('5', 'East Krystalview', 'Liechtenstein');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('6', 'Spencerfurt', 'Namibia');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('7', 'Fadelfort', 'Zambia');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('8', 'Lake Agustina', 'Aruba');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('9', 'Port Stephania', 'Korea');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('10', 'New Beatrice', 'Jordan');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('11', 'Lake Edwardomouth', 'Serbia');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('12', 'South Armani', 'Yemen');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('13', 'Lakinstad', 'Suriname');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('14', 'Freddyfurt', 'Colombia');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('15', 'Lillianmouth', 'Barbados');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('16', 'New Maddisonside', 'Guatemala');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('17', 'Port Josefamouth', 'Singapore');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('18', 'Johnsonmouth', 'Saint Barthelemy');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('19', 'North Heloisefort', 'Iran');
INSERT INTO `advert_location` (`id`, `city`, `country`) VALUES ('20', 'West Christian', 'Guadeloupe');


-- Таблица с объявлениями пользователей
CREATE TABLE adverts(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
    advert_location_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	INDEX user_id_idx (user_id),
	FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (advert_location_id) REFERENCES advert_location (id)
);


INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Nemo odio voluptas aut optio. Ut est magnam voluptates eum repellat qui corporis. Ut aliquid aliquam aut aut ipsa placeat tempora. Accusamus dolor repellendus consequuntur atque.', '1992-10-07 05:27:13', '1996-06-22 14:12:50');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Quam qui odio et quas porro itaque pariatur. Perspiciatis aut explicabo consequuntur. Consequatur aspernatur minima natus minima est nihil. Dolores adipisci ut ad.', '1989-07-29 05:23:05', '2008-08-22 19:27:16');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'In et quam debitis. Vero corporis nemo ratione et autem nulla. Tempore sit tempora molestiae rem nulla. Ut ea neque neque velit officia.', '2020-05-24 04:32:28', '1980-10-11 04:13:57');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Nobis debitis et quisquam quisquam. Quis expedita qui sit sed. A nulla voluptatem eligendi dolor blanditiis. Nam accusamus rerum non.', '2008-03-13 06:29:11', '1974-01-29 20:34:55');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Sint saepe voluptas eaque repellendus. Ipsum sunt molestias et magni exercitationem.', '1982-07-31 10:25:23', '1976-03-17 06:18:22');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'Assumenda velit repellendus enim numquam architecto ducimus consequatur. Nobis sint cumque voluptas et. Sequi voluptas atque dignissimos. Tenetur voluptas qui corrupti quam et nostrum.', '1983-12-14 19:24:05', '1994-08-08 01:41:21');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('7', '7', '7', 'Hic neque molestiae id et delectus. Tempora dignissimos impedit incidunt et quia praesentium voluptatem non. Ut porro qui voluptatum dolor totam quibusdam saepe molestiae.', '1984-04-26 00:43:04', '2017-03-22 14:22:09');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('8', '8', '8', 'Est qui inventore eligendi voluptatum laboriosam sit est. Id explicabo molestias deleniti incidunt cum. Voluptas molestiae voluptatem aut optio similique in. Quae itaque praesentium sunt culpa.', '1984-01-25 16:17:06', '1995-11-13 01:19:35');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('9', '9', '9', 'Culpa harum ut sed est id. Praesentium a assumenda est maiores qui repellat. Consequatur doloribus ut ratione quia. Ad reiciendis qui nostrum molestiae sed doloremque.', '1970-05-20 14:41:03', '1986-02-07 19:10:48');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('10', '10', '10', 'Voluptatum ullam enim explicabo quidem earum. Ea quisquam nesciunt tempore cum itaque eveniet voluptas laboriosam. Neque perspiciatis et et maxime iusto qui. Est maiores perspiciatis quia maxime reiciendis dicta.', '1989-09-21 22:21:53', '1971-08-23 19:06:33');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('11', '11', '11', 'Sapiente voluptatum temporibus similique ut. Quisquam architecto quo autem. Nemo tempore est iusto ab quia. Consequatur tempora quod provident non et placeat vero labore.', '1997-01-24 14:38:36', '1997-08-16 15:57:16');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('12', '12', '12', 'Recusandae debitis aliquam veniam. Ut repellendus ipsa iusto eum. Eos ipsum fugit vel magnam alias. Nihil vel earum voluptatum officia ut sed.', '2016-01-06 12:57:01', '2018-09-06 05:03:42');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('13', '13', '13', 'Quas unde id saepe. Rerum rerum occaecati commodi ea voluptatem. Quod sequi maiores consequuntur eos temporibus. Architecto consequatur est nesciunt beatae architecto.', '2011-11-05 10:07:41', '1995-12-04 05:19:55');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('14', '14', '14', 'Voluptatem sint nemo deleniti minus. Ut quas et voluptate ad voluptatem. Ipsa sed harum in velit porro dolor.', '1990-04-29 01:27:00', '2017-05-23 09:14:56');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('15', '15', '15', 'Est assumenda cum voluptatibus enim. Dolor quaerat est veritatis et quia. Aut quam atque vel vel.', '2000-05-26 13:03:49', '1979-12-07 01:00:53');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('16', '16', '16', 'Corrupti nobis quia tenetur ab autem sint maiores. Saepe officiis quidem placeat error maxime placeat inventore. Sequi non doloremque dolores veritatis. Veritatis commodi fugiat porro et.', '1985-06-19 23:48:26', '1979-04-02 23:06:41');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('17', '17', '17', 'Ipsam amet velit nam aut. In laboriosam eaque in repellendus reprehenderit sit aut ea. Est asperiores velit neque voluptas. Dolores aliquam omnis eos quos vel doloribus molestiae.', '1978-12-23 07:28:18', '1979-04-20 01:53:41');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('18', '18', '18', 'Quis architecto alias sed quidem iusto hic alias. Distinctio accusamus libero a quaerat deserunt autem reiciendis. Maxime quo modi quod est et sed accusamus. Ut dolorum odio illo qui aut aut. Eos consequuntur omnis neque error.', '2015-05-23 12:12:26', '1985-06-18 13:04:46');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('19', '19', '19', 'Ut fugit ut nobis a quis et iure. Quis voluptate qui error adipisci nisi. Ut odit veniam voluptatem quo. Omnis ipsum eligendi dolores quae perspiciatis numquam.', '1987-12-06 01:08:03', '2005-12-13 01:16:21');
INSERT INTO `adverts` (`id`, `user_id`, `advert_location_id`, `body`, `created_at`, `updated_at`) VALUES ('20', '20', '20', 'Laudantium tempora et numquam sint rem. Ab ut accusantium provident quas nulla fugiat aperiam. Tenetur nulla deserunt laborum omnis error aperiam maxime commodi. Dolorem at cumque animi est vero veritatis ipsum.', '1995-03-26 05:12:29', '1981-03-01 22:00:34');


-- Таблица для связи объявления пользователя и медифайлов, прикрепленных к объявлению
CREATE TABLE advert_photos (
    advert_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (advert_id) REFERENCES adverts (id),
    FOREIGN KEY (media_id) REFERENCES media (id)
);


INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('1', '1');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('2', '2');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('3', '3');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('4', '4');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('5', '5');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('6', '6');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('7', '7');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('8', '8');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('9', '9');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('10', '10');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('11', '11');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('12', '12');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('13', '13');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('14', '14');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('15', '15');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('16', '16');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('17', '17');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('18', '18');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('19', '19');
INSERT INTO `advert_photos` (`advert_id`, `media_id`) VALUES ('20', '20');

