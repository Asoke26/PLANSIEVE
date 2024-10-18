SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.kind_id=2 AND 
t.series_years>='2004-2008' AND 
t.production_year<=2004.0 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;