SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE ci.role_id=1 AND 
t.production_year=1911.0 AND 
t.kind_id=1 AND 
t.phonetic_code>='T412' AND 
mc.company_type_id=2 AND 
ci.nr_order>=5.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;