SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mc.company_type_id=1 AND 
t.production_year=2001.0 AND 
t.phonetic_code='A6312' AND 
mk.keyword_id=3306 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;