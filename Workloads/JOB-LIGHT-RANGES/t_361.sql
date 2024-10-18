SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.nr_order>=0.0 AND 
ci.role_id=4 AND 
t.phonetic_code<='S352' AND 

t.id = ci.movie_id;