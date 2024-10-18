SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year=2007.0 AND 
t.kind_id=1 AND 
mi_idx.info_type_id=101 AND 
mk.keyword_id=24261 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;