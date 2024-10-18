SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,title t
WHERE mc.company_type_id=1 AND 
t.phonetic_code>='L6316' AND 
mi.info_type_id=7 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id;