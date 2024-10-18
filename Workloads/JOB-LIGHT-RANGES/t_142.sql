SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.phonetic_code='D2125' AND 
mi.info_type_id=4 AND 
t.production_year>=2005.0 AND 
mk.keyword_id=6848 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;