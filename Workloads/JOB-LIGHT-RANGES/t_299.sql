SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.role_id=1 AND 
mk.keyword_id=2752 AND 
t.kind_id=1 AND 
ci.nr_order<=13.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;