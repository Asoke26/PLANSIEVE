SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.episode_nr<=4.0 AND 
t.kind_id=7 AND 
ci.role_id=3 AND 
mc.company_type_id=2 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;