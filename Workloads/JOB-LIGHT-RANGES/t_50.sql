SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.kind_id=1 AND 
mc.company_type_id=1 AND 
t.production_year=2009.0 AND 
mi_idx.info_type_id=101 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;