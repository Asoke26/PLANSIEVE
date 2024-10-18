SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=107 AND 
t.production_year=2009.0 AND 
t.phonetic_code<='S6424' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;