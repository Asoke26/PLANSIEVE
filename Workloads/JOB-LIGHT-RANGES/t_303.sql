SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE mk.keyword_id=5210 AND 
ci.role_id=2 AND 
t.kind_id=1 AND 
t.production_year<=1996.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;