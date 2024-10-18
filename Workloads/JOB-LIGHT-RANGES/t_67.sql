SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.production_year=1996.0 AND 
mk.keyword_id=2523 AND 
t.phonetic_code<='J52' AND 
mc.company_type_id=1 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;