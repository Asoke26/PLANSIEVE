SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE t.phonetic_code<='S313' AND 
t.kind_id=1 AND 
ci.role_id=1 AND 
t.production_year=2010.0 AND 
mi.info_type_id=16 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;