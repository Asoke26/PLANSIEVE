SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mi.info_type_id=107 AND 
t.production_year=2006.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;