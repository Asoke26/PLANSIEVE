SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.role_id=1 AND 
t.kind_id=1 AND 
t.phonetic_code>='F5452' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;