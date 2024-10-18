SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mi.info_type_id=16 AND 
mc.company_type_id=2 AND 
t.phonetic_code='V2153' AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;