SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.phonetic_code='O431' AND 
t.production_year<=2003.0 AND 
mi_idx.info_type_id=100 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;