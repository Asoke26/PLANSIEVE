SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.phonetic_code>='P3' AND 
mk.keyword_id=30079 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;