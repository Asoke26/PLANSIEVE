SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code<='T4362' AND 
t.production_year=1997.0 AND 
mk.keyword_id=10461 AND 
t.kind_id=1 AND 
mc.company_type_id=1 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;