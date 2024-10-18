SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE mk.keyword_id=2761 AND 
t.kind_id=1 AND 
t.phonetic_code>='C4353' AND 
t.production_year<=2003.0 AND 
mc.company_type_id=1 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;