SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.season_nr<=2.0 AND 
ci.role_id=10 AND 
t.production_year<=1995.0 AND 
t.kind_id=7 AND 
mc.company_type_id=1 AND 
t.episode_nr=20.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;