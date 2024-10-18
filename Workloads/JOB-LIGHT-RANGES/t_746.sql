SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE ci.nr_order<=50.0 AND 
t.production_year<=1998.0 AND 
t.kind_id=1 AND 
mi.info_type_id=1 AND 
t.phonetic_code>='G324' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;