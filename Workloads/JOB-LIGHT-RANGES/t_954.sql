SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year<=2005.0 AND 
mk.keyword_id=733 AND 
mi_idx.info_type_id=101 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;