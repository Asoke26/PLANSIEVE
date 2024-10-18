SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE ci.role_id=2 AND 
ci.nr_order>=14.0 AND 
t.kind_id=1 AND 
mc.company_type_id=1 AND 
mk.keyword_id=4928 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;