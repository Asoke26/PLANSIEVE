SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mi.info_type_id=17 AND 
mc.company_type_id=1 AND 
t.phonetic_code='M3626' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;