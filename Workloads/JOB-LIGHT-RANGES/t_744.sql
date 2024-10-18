SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE mi.info_type_id=7 AND 
t.phonetic_code>='N25' AND 
ci.role_id=3 AND 
t.production_year<=1995.0 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;