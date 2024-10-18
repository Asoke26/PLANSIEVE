SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mc.company_type_id=1 AND 
mk.keyword_id=28390 AND 
t.production_year=2005.0 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;