SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year=2009.0 AND 
t.phonetic_code='F425' AND 
mc.company_type_id=1 AND 
mk.keyword_id=5502 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;