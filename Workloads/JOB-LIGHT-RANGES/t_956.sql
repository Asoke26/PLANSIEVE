SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code='D1' AND 
ci.nr_order<=3.0 AND 
t.kind_id=1 AND 
t.production_year>=1968.0 AND 
mk.keyword_id=26087 AND 
ci.role_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;