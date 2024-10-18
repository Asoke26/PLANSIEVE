SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE mc.company_type_id=1 AND 
t.production_year=1996.0 AND 
mi.info_type_id=7 AND 
mi_idx.info_type_id=100 AND 
t.phonetic_code<='S2632' AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;