SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.kind_id=7 AND 
t.episode_nr=20.0 AND 
t.production_year<=2010.0 AND 

t.id = ci.movie_id;