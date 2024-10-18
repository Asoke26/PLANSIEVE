SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year=1990.0 AND 
mc.company_type_id=1 AND 
t.phonetic_code<='D3653' AND 
mk.keyword_id=1131 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;