SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.phonetic_code<='M5326' AND 
t.production_year=1956.0 AND 
t.kind_id=1 AND 
mk.keyword_id=1141 AND 
mc.company_type_id=2 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;