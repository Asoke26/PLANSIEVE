SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE mc.company_type_id=1 AND 
t.phonetic_code<='R3253' AND 
t.kind_id=1 AND 
t.production_year<=1952.0 AND 
mi.info_type_id=16 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;