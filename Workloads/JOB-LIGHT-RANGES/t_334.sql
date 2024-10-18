SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.episode_nr=12445.0 AND 
ci.nr_order=15.0 AND 
t.season_nr=1.0 AND 

t.id = ci.movie_id;