SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE mi_idx.info_type_id=101 AND 
t.production_year<=1993.0 AND 
t.phonetic_code>='F64' AND 
mc.company_type_id=2 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;