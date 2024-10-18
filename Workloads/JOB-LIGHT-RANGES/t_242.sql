SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.production_year>=1976.0 AND 
mi.info_type_id=4 AND 
t.kind_id=3 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;