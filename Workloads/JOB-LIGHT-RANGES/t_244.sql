SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mc.company_type_id=1 AND 
t.phonetic_code>='L3452' AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;