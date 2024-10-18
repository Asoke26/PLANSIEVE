SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE mc.company_type_id=2 AND 
t.kind_id=2 AND 
t.series_years>='2000-2006' AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;