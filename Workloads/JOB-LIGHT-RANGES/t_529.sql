SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year>=1975.0 AND 
t.kind_id=1 AND 
mi_idx.info_type_id=101 AND 
mk.keyword_id=2513 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;