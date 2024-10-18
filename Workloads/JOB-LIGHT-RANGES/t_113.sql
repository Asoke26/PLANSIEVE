SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year>=2008.0 AND 
mk.keyword_id=1941 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;