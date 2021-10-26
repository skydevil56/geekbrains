-- Подсчитать общее количество лайков, которые получили пользователи младше 10 лет.

SELECT count(*) FROM likes WHERE user_id IN (
	SELECT user_id FROM profiles WHERE FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday))/365.25) < 10
);
