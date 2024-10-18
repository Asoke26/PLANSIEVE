SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE mi_idx.info_type_id=101 AND 
t.kind_id=1 AND 
t.phonetic_code='P635' AND 
mi.info_type_id=5 AND 
t.production_year>=1990.0 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;