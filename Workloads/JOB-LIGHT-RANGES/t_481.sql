SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.production_year<=1980.0 AND 
mc.company_type_id=2 AND 
mi_idx.info_type_id=99 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;