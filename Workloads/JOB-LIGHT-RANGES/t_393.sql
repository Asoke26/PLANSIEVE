SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.production_year<=1976.0 AND 
mc.company_type_id=2 AND 
t.season_nr<=4.0 AND 
ci.nr_order=10.0 AND 
ci.role_id=1 AND 
t.episode_nr>=15.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;