SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.production_year>=1990.0 AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 
mi_idx.info_type_id=101 AND 
mi.info_type_id=61 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;