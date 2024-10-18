SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.production_year<=2008.0 AND 
t.kind_id=7 AND 
t.episode_nr=35.0 AND 
t.season_nr=1.0 AND 
ci.nr_order>=25.0 AND 
ci.role_id=2 AND 

t.id = ci.movie_id;