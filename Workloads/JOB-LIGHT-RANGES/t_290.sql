SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.phonetic_code='W2436' AND 
mk.keyword_id=49054 AND 
t.kind_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;