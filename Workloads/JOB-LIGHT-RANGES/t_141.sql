SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.phonetic_code>='E353' AND 
mi.info_type_id=17 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;