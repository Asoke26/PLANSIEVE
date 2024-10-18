SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.production_year<=1991.0 AND 
t.phonetic_code='T6536' AND 
mi.info_type_id=13 AND 
mi_idx.info_type_id=99 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;