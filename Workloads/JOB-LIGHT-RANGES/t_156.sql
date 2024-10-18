SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.production_year=1987.0 AND 
t.phonetic_code='D3524' AND 
mi.info_type_id=5 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;