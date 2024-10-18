SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.kind_id=7 AND 
t.production_year<=2002.0 AND 
ci.role_id=1 AND 
t.episode_nr<=65.0 AND 

t.id = ci.movie_id;