SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.phonetic_code>='I5121' AND 
mk.keyword_id=30157 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;