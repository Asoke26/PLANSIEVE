SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE mi.info_type_id=13 AND 
t.phonetic_code<='S2612' AND 
mc.company_type_id=1 AND 
ci.role_id=2 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;