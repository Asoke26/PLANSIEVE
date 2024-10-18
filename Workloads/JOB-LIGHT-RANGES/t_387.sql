SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.production_year>=2011.0 AND 
t.kind_id=1 AND 
ci.role_id=4 AND 
ci.nr_order=0.0 AND 
t.phonetic_code>='C1' AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;