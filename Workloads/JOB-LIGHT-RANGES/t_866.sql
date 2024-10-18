SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
ci.role_id=10 AND 
mc.company_type_id=2 AND 
t.production_year>=2007.0 AND 
mk.keyword_id=97113 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;