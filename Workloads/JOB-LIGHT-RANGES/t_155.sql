SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.production_year<=1939.0 AND 
t.kind_id=1 AND 
mk.keyword_id=2010 AND 
mi.info_type_id=5 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;