SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE ci.role_id=3 AND 
mi.info_type_id=15 AND 
mc.company_type_id=1 AND 
t.kind_id=1 AND 
t.phonetic_code<='B241' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;