SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE mk.keyword_id=3341 AND 
t.production_year<=1993.0 AND 
t.phonetic_code>='T65' AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;