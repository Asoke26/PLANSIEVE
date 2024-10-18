SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.production_year<=1968.0 AND 
mi.info_type_id=16 AND 
mk.keyword_id=16466 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;