SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.nr_order>=14.0 AND 
mk.keyword_id=20447 AND 
t.production_year>=1935.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;