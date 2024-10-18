SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.production_year>=1983.0 AND 
t.episode_nr<=22.0 AND 
t.season_nr>=7.0 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;