SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE t.phonetic_code='I5352' AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 
ci.role_id=3 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;