SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE mc.company_type_id=1 AND 
ci.role_id=10 AND 
mk.keyword_id=5117 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;