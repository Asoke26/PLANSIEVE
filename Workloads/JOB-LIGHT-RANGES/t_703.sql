SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.kind_id=4 AND 
mi.info_type_id=7 AND 
t.production_year>=2012.0 AND 
t.phonetic_code='W6413' AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;