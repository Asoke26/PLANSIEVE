SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year<=2006.0 AND 
mi.info_type_id=5 AND 
t.phonetic_code<='S1656' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;