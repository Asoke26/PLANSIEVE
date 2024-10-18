SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code>='K2532' AND 
t.production_year<=1958.0 AND 
mc.company_type_id=2 AND 
t.kind_id=1 AND 
mk.keyword_id=19502 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;