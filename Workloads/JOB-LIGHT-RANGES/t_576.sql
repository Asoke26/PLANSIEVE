SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=76 AND 
t.phonetic_code>='F416' AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;