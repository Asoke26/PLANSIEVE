SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.production_year<=1999.0 AND 
mi.info_type_id=106 AND 
mk.keyword_id=2908 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;