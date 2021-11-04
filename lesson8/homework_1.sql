-- Найдем имя и фамилию пользователя, который отправил максимальное количетво сообщений пользователю с почтой arlo50@example.org.

SELECT count(*) AS msg_count, concat(u_from.firstname, ' ', u_from.lastname)
FROM messages AS m
INNER JOIN users AS u_to ON m.to_user_id = u_to.id
INNER JOIN users AS u_from ON m.from_user_id = u_from.id 
WHERE u_to.email = 'arlo50@example.org'
GROUP BY m.from_user_id
ORDER BY msg_count DESC
LIMIT 1
;