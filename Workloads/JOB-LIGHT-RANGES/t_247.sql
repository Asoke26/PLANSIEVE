SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.phonetic_code<='Q23' AND 
t.kind_id=1 AND 
mi.info_type_id=5 AND 
t.production_year=1996.0 AND 
mc.company_type_id=1 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;