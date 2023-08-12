-- Задача 4: выбрать всех пользователей, указав их id, имя и фамилию, город и аватарку
-- (используя вложенные запросы)
select u.id, u.firstname, u.lastname, p.hometown, p.photo_id
from users as u
join profiles as p on p.user_id = u.id;