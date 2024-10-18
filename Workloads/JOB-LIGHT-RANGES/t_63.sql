SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code>='B46' AND 
t.production_year<=1963.0 AND 
mk.keyword_id=6393 AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;