SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=8454 AND 
t.kind_id=1 AND 
mi.info_type_id=5 AND 
mi_idx.info_type_id=99 AND 
t.production_year<=2011.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;