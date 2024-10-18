SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.nr_order<=2.0 AND 
t.production_year>=2006.0 AND 
t.episode_nr<=11083.0 AND 
t.season_nr>=1.0 AND 

t.id = ci.movie_id;