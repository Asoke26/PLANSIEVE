SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.kind_id=1 AND 
t.production_year<=2010.0 AND 
mc.company_type_id=2 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;