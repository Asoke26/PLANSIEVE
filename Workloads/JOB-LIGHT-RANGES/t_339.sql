SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.kind_id=7 AND 
ci.role_id=2 AND 
t.episode_nr=2.0 AND 

t.id = ci.movie_id;