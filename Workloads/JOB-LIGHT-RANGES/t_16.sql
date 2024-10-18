SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.production_year=1924.0 AND 
mi_idx.info_type_id=101 AND 
mc.company_type_id=1 AND 
t.phonetic_code>='K5213' AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;