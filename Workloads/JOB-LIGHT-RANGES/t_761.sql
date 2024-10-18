SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE ci.role_id=10 AND 
mi.info_type_id=5 AND 
t.phonetic_code>='E2353' AND 
mc.company_type_id=1 AND 
t.production_year>=2001.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;