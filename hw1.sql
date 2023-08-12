-- ID пользователей младше 35 лет для проверки
SELECT user_id, (YEAR(current_date())-YEAR(birthday)) AS age FROM profiles HAVING age < '35'; 
-- 1. Подсчитать общее количество лайков, которые получили пользователи младше 35 лет
-- сумма лайков из таблицы
SELECT COUNT(*) AS 'Likes'  FROM likes AS l WHERE l.user_id IN (SELECT p.user_id FROM profiles AS p WHERE (YEAR(NOW())-YEAR(birthday)) < 35);
