-- Найдем имя и фамилию пользователя, который отправил максимальное количетво сообщений пользователю с почтой arlo50@example.org.
SELECT concat(firstname, ' ', lastname) FROM users WHERE id = (
	SELECT max_count_msg_and_user_id.from_user_id 
	FROM (
		SELECT count(from_user_id) AS msg_count, from_user_id
		FROM messages
		WHERE to_user_id = (SELECT id FROM users WHERE email = 'arlo50@example.org')
		GROUP BY from_user_id
		ORDER BY msg_count DESC
		LIMIT 1
	) max_count_msg_and_user_id
);
