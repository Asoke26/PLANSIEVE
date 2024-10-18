SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE ci.nr_order>=15.0 AND 
t.production_year<=1972.0 AND 
t.kind_id=1 AND 
t.phonetic_code>='R4524' AND 
mc.company_type_id=1 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;