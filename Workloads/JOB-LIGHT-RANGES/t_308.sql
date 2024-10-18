SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE mk.keyword_id=102352 AND 
ci.role_id=6 AND 
t.kind_id=1 AND 
t.phonetic_code='S2635' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;