SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE ci.role_id=8 AND 
t.kind_id=1 AND 
t.production_year=1910.0 AND 
t.phonetic_code<='T5243' AND 
mi_idx.info_type_id=100 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;