SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.production_year<=1983.0 AND 
mi.info_type_id=4 AND 
t.kind_id=3 AND 
t.phonetic_code>='W4364' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;