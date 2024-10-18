SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year<=1990.0 AND 
mk.keyword_id=2387 AND 
mi.info_type_id=16 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;