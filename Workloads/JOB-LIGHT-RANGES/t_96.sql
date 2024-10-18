SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE mc.company_type_id=1 AND 
t.kind_id=1 AND 
t.production_year<=1988.0 AND 
t.phonetic_code='F6532' AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;