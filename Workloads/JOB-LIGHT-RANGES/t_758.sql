SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE mc.company_type_id=1 AND 
ci.role_id=7 AND 
mi.info_type_id=16 AND 
t.production_year<=2007.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;