SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.phonetic_code>='F6135' AND 
mi.info_type_id=6 AND 
mc.company_type_id=1 AND 
mi_idx.info_type_id=101 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;