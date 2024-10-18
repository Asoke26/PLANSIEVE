SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.kind_id=1 AND 
ci.role_id=10 AND 
t.production_year>=1996.0 AND 

t.id = ci.movie_id;