SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code='C4534' AND 
t.production_year<=1967.0 AND 
t.kind_id=1 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;