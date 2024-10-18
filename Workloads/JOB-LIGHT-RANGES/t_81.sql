SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE mc.company_type_id=1 AND 
t.phonetic_code='D5435' AND 
t.kind_id=1 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;