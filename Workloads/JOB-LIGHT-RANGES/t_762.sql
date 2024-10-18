SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE t.kind_id=1 AND 
ci.role_id=1 AND 
t.production_year>=2007.0 AND 
mc.company_type_id=1 AND 
t.phonetic_code>='H6136' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;