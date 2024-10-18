SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code<='B1631' AND 
mc.company_type_id=1 AND 
mk.keyword_id=5350 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;