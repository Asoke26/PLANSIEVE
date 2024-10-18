SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE ci.role_id=1 AND 
t.kind_id=1 AND 
t.phonetic_code='S3235' AND 
t.production_year>=1944.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;