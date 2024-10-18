SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE ci.role_id=1 AND 
t.kind_id=1 AND 
mc.company_type_id=1 AND 
t.phonetic_code>='C5136' AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;