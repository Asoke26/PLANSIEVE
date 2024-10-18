SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.production_year=1995.0 AND 
mi.info_type_id=16 AND 
t.kind_id=1 AND 
t.phonetic_code<='C123' AND 
mk.keyword_id=5067 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;