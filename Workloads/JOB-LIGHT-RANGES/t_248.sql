SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mi.info_type_id=106 AND 
mc.company_type_id=2 AND 
t.phonetic_code>='S26' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;