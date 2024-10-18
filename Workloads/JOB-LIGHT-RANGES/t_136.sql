SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=21632 AND 
t.phonetic_code>='B3613' AND 
t.production_year=2005.0 AND 
mi.info_type_id=18 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;