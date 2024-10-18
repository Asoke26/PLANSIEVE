SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year>=1977.0 AND 
t.kind_id=1 AND 
mk.keyword_id=2458 AND 
mi_idx.info_type_id=101 AND 
mi.info_type_id=17 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;