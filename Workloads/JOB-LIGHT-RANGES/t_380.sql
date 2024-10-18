SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.kind_id=7 AND 
t.episode_nr>=9.0 AND 
ci.role_id=1 AND 

t.id = ci.movie_id;