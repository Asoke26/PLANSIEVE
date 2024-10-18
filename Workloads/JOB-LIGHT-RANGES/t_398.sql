SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE ci.role_id=1 AND 
t.kind_id=7 AND 
t.episode_nr>=12.0 AND 
t.season_nr>=3.0 AND 
mc.company_type_id=2 AND 
ci.nr_order=4.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;