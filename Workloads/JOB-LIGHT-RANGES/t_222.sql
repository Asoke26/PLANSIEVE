SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.production_year=2011.0 AND 
t.kind_id=1 AND 
mi.info_type_id=5 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;