SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.kind_id=1 AND 
t.phonetic_code<='Z2535' AND 
ci.role_id=7 AND 

t.id = ci.movie_id;