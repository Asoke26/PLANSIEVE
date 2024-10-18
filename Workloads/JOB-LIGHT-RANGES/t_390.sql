SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.kind_id=1 AND 
t.phonetic_code<='T623' AND 
ci.role_id=8 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;