SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=1608 AND 
t.kind_id=1 AND 
t.production_year>=1979.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;