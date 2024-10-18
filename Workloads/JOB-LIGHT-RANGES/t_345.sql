SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.kind_id=7 AND 
ci.role_id=8 AND 
t.production_year<=2004.0 AND 

t.id = ci.movie_id;