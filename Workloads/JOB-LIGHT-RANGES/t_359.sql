SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.nr_order<=1.0 AND 
ci.role_id=1 AND 
t.kind_id=7 AND 

t.id = ci.movie_id;