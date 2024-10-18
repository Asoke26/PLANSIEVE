SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE t.production_year=2007.0 AND 
mi.info_type_id=106 AND 
t.phonetic_code='N3543' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;