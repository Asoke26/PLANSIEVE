SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.production_year<=1959.0 AND 
t.phonetic_code>='S5423' AND 
mi.info_type_id=81 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;