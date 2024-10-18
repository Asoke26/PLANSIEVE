SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.phonetic_code<='M2153' AND 
t.kind_id=3 AND 
ci.role_id=1 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;