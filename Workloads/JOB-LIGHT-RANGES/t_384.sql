SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.season_nr<=1.0 AND 
t.kind_id=7 AND 
ci.role_id=1 AND 
ci.nr_order>=3.0 AND 

t.id = ci.movie_id;