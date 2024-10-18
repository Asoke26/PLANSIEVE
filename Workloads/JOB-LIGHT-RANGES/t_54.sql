SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.season_nr<=1.0 AND 
mi_idx.info_type_id=99 AND 
mc.company_type_id=1 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;