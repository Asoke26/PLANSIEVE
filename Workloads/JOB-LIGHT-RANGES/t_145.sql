SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=4 AND 
t.production_year>=1994.0 AND 
mk.keyword_id=335 AND 
mi.info_type_id=2 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;