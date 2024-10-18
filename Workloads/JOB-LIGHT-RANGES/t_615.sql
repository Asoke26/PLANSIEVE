SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE ci.role_id=10 AND 
mc.company_type_id=2 AND 
t.phonetic_code>='R52' AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;