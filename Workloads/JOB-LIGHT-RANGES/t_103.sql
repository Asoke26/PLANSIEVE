SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE mk.keyword_id=5889 AND 
t.phonetic_code<='G5261' AND 
mc.company_type_id=1 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;