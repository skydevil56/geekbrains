-- Подсчитать общее количество лайков, которые получили пользователи младше 10 лет.

SELECT count(*)
FROM likes AS l
INNER JOIN profiles AS p ON l.user_id = p.user_id 
WHERE timestampdiff(YEAR, p.birthday, NOW()) < 10  
;
