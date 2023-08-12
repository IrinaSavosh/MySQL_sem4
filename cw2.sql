-- Задача 2: выбрать фотографии (filename) пользователя с email: arlo50@example.org.
-- ID типа медиа, соответствующий фотографиям неизвестен
--  (используя вложенные запросы)
select m.id, 
(select name_type from media_types where media_types.id = m.media_type_id) as name_type,
m.user_id
from media as m
where m.user_id in (select users.id from users where email = 'arlo50@example.org') and 
m.media_type_id in (select mt.id from media_types as mt where mt.id = 1);