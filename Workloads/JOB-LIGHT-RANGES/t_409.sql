SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE ci.nr_order<=1000.0 AND 
t.episode_nr=24.0 AND 
t.kind_id=7 AND 
t.season_nr>=4.0 AND 
mc.company_type_id=1 AND 
ci.role_id=4 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;