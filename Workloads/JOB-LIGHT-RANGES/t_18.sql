SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE mi_idx.info_type_id=100 AND 
t.phonetic_code>='S5264' AND 
mc.company_type_id=2 AND 
t.production_year<=2007.0 AND 
t.kind_id=1 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;