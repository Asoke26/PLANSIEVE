SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.production_year<=1998.0 AND 
mk.keyword_id=2037 AND 
t.kind_id=1 AND 
mc.company_type_id=1 AND 
t.phonetic_code>='S1521' AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;