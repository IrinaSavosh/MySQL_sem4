-- 2. Определить кто больше поставил лайков (всего) - мужчины или женщины

-- как здесь использовать функцию max, я не додумалась. Сначала прописать выборку по max,
-- потом как вложенный запрос сделать выборку по количеству лайков, сделаных разными gender? Т.е.:
-- select max(max_count_likes) where exists
-- (SELECT count(*) AS max_count_likes
-- FROM likes AS l
-- JOIN profiles AS p ON p.user_id = l.user_id
-- GROUP BY p.gender);
-- В верном направлении смотрела?

SELECT p.gender, count(*) AS max_count_likes
FROM likes AS l
JOIN profiles AS p ON p.user_id = l.user_id
GROUP BY p.gender
ORDER BY max_count_likes DESC
LIMIT 1;
