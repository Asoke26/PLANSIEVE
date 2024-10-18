SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE ci.role_id=10 AND 
t.production_year=1999.0 AND 
t.phonetic_code>='S6232' AND 
t.kind_id=3 AND 
mc.company_type_id=2 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;