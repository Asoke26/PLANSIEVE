SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE t.production_year=2002.0 AND 
mi.info_type_id=5 AND 
t.kind_id=1 AND 
mc.company_type_id=1 AND 
ci.role_id=10 AND 
t.phonetic_code>='S2626' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;