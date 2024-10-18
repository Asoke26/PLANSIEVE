SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE mc.company_type_id=1 AND 
t.production_year=2005.0 AND 
ci.role_id=1 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;