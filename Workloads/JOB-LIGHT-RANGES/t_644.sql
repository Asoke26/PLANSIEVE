SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE ci.nr_order=17.0 AND 
mk.keyword_id=26823 AND 
mc.company_type_id=1 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;