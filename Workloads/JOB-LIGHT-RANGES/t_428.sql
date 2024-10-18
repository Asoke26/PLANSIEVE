SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.season_nr>=8.0 AND 
t.production_year=2007.0 AND 
ci.role_id=3 AND 
t.kind_id=7 AND 
t.episode_nr>=14.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;