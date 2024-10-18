SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.kind_id=3 AND 
t.phonetic_code<='G' AND 
mi_idx.info_type_id=100 AND 
t.production_year=1998.0 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;