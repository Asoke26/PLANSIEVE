SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE ci.role_id=10 AND 
mc.company_type_id=1 AND 
t.production_year=1987.0 AND 
t.kind_id=1 AND 
t.phonetic_code>='A6' AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;