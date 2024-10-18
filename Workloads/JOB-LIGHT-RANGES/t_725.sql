SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE t.production_year<=2004.0 AND 
ci.role_id=10 AND 
t.phonetic_code<='M6' AND 
mc.company_type_id=2 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;