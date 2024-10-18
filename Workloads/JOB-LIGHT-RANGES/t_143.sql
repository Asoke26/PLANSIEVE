SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.phonetic_code>='T41' AND 
t.production_year<=1988.0 AND 
mi.info_type_id=86 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;