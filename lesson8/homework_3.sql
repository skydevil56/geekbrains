-- Определить кто больше поставил лайков (всего): мужчины или женщины.


SELECT count(*) AS count_likes, p.gender 
FROM likes l
INNER JOIN profiles p ON l.user_id = p.user_id
GROUP BY gender
ORDER BY count_likes DESC
LIMIT 1
;
