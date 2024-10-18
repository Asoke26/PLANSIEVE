SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=13 AND 
mc.company_type_id=1 AND 
t.phonetic_code='F6316' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;