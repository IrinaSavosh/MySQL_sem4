-- Задача 5: Список медиафайлов пользователей с количеством лайков (используя JOIN)
select m.filename, u.firstname, u.lastname, count(*) as likes
from likes as l
join media as m on m.id = l.media_id
join users as u on u.id = m.user_id
group by l.media_id
order by likes DESC;
