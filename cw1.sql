-- Задача 1: выбрать всех пользователей, указав их id, имя и фамилию, город и аватарку
-- (используя вложенные запросы)
select id, firstname, lastname, 
(select hometown from profiles where profiles.user_id = users.id) as hometown,
(select photo_id from profiles where profiles.user_id = users.id) as photo
from users;