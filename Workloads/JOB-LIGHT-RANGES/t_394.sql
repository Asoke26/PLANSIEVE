SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE ci.nr_order=19.0 AND 
ci.role_id=2 AND 
t.production_year=2007.0 AND 
t.kind_id=1 AND 
mc.company_type_id=1 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;