SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE mk.keyword_id=2964 AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;