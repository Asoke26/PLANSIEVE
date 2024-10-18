SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE ci.role_id=2 AND 
mi.info_type_id=16 AND 
ci.nr_order=13.0 AND 
t.phonetic_code<='C6232' AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;