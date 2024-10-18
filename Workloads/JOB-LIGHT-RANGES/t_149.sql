SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.production_year=2001.0 AND 
mi.info_type_id=2 AND 
mk.keyword_id=8444 AND 
t.kind_id=1 AND 
t.phonetic_code='M525' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;