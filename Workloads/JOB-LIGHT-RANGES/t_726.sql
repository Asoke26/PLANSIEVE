SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE t.kind_id=2 AND 
t.series_years='1994-2004' AND 
ci.role_id=10 AND 
mc.company_type_id=1 AND 
t.production_year=1994.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;