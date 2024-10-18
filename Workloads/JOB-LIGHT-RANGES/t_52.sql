SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.kind_id=7 AND 
t.season_nr>=1.0 AND 
mc.company_type_id=1 AND 
t.episode_nr=7.0 AND 
t.production_year=2008.0 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;