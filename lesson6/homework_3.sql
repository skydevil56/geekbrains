 -- Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT
	CASE (max_count_likes_gender.gender)
		WHEN 'f' THEN 'female'
		WHEN 'm' THEN 'male'
		WHEN 'x' THEN 'not defined'
	END AS gender

FROM
(
	SELECT count(gender) AS count_likes, gender
	FROM profiles
	WHERE user_id IN (
		SELECT id FROM users WHERE id IN (
			SELECT user_id FROM likes
		)
	)
	GROUP BY gender
	ORDER BY count_likes DESC
	LIMIT 1
) max_count_likes_gender
;

