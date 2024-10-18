SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.production_year<=2011.0 AND 
ci.nr_order=8.0 AND 
t.kind_id=7 AND 

t.id = ci.movie_id;