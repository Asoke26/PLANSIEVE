SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.production_year=2009.0 AND 
t.kind_id=7 AND 
t.episode_nr<=5.0 AND 
ci.nr_order<=1.0 AND 
ci.role_id=1 AND 

t.id = ci.movie_id;