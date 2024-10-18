SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year=1948.0 AND 
mk.keyword_id=121 AND 
mi.info_type_id=15 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;