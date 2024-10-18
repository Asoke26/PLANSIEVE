SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE ci.nr_order<=8.0 AND 
t.phonetic_code='S5236' AND 
ci.role_id=1 AND 
mi.info_type_id=5 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;