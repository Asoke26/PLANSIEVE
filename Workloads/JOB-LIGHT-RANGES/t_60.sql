SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year>=2007.0 AND 
mc.company_type_id=1 AND 
t.phonetic_code='B4353' AND 
mk.keyword_id=6283 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;