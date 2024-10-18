SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE mc.company_type_id=1 AND 
t.kind_id=1 AND 
t.phonetic_code>='K2323' AND 
t.production_year>=1981.0 AND 
mi_idx.info_type_id=101 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;