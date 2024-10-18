SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.phonetic_code>='D5232' AND 
ci.role_id=8 AND 
t.production_year=1999.0 AND 
mi_idx.info_type_id=101 AND 
t.kind_id=6 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;