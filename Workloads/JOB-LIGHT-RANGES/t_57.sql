SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.production_year>=2000.0 AND 
mk.keyword_id=61522 AND 
t.kind_id=1 AND 
mc.company_type_id=1 AND 
t.phonetic_code='P3214' AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;