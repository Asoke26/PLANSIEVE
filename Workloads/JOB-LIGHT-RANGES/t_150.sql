SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=4 AND 
t.phonetic_code='C6262' AND 
mk.keyword_id=186 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;