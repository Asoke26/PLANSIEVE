SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year<=1998.0 AND 
mk.keyword_id=3287 AND 
t.phonetic_code>='M5' AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;