SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.production_year>=2002.0 AND 
t.kind_id=1 AND 
mk.keyword_id=3483 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;