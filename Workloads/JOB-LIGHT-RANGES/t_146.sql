SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.phonetic_code='T262' AND 
t.kind_id=1 AND 
t.production_year<=2010.0 AND 
mi.info_type_id=97 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;