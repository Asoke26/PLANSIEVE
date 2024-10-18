SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE mi.info_type_id=5 AND 
t.kind_id=1 AND 
t.phonetic_code<='B4323' AND 
t.production_year<=1941.0 AND 
ci.role_id=3 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;