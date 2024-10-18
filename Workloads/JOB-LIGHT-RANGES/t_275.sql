SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE mk.keyword_id=924 AND 
t.kind_id=6 AND 
t.phonetic_code>='M6342' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;