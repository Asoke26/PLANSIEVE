SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE t.production_year>=2011.0 AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 
ci.nr_order=19.0 AND 
mk.keyword_id=17901 AND 
ci.role_id=1 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;