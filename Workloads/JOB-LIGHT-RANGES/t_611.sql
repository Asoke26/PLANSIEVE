SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE ci.role_id=1 AND 
t.phonetic_code>='C1626' AND 
mc.company_type_id=1 AND 
t.production_year=1944.0 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;