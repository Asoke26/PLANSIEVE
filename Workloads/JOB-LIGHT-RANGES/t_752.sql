SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE t.production_year=1994.0 AND 
t.kind_id=1 AND 
mc.company_type_id=1 AND 
mi.info_type_id=17 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;