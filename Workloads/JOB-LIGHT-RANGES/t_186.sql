SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.season_nr=2.0 AND 
t.episode_nr<=2.0 AND 
t.production_year>=2009.0 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;