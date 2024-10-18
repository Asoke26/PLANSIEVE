SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE t.phonetic_code>='V216' AND 
t.kind_id=1 AND 
mi.info_type_id=16 AND 
t.production_year<=2011.0 AND 
mc.company_type_id=2 AND 
ci.role_id=10 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;