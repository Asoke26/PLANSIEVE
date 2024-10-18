SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE mc.company_type_id=1 AND 
t.phonetic_code='J2365' AND 
t.kind_id=7 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;