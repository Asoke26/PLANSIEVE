SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE mk.keyword_id=28078 AND 
ci.role_id=4 AND 
t.production_year>=1997.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;