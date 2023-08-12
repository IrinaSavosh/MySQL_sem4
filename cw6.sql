/*Задача 6: Список медиафайлов пользователей, указав название типа медиа (id, filename, name_type)
(используя JOIN)*/

select m.id, m.user_id, m.filename, mt.name_type
from media as m
join media_types as mt on mt.id = m.media_type_id
;