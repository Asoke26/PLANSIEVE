SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.phonetic_code<='A1623' AND 
mi_idx.info_type_id=99 AND 
ci.role_id=1 AND 
t.production_year>=2004.0 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;