SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.phonetic_code<='C6165' AND 
t.production_year=1972.0 AND 
mi.info_type_id=5 AND 
mc.company_type_id=1 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;