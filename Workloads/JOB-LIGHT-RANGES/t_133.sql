SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.phonetic_code<='P6165' AND 
mi.info_type_id=18 AND 
mk.keyword_id=807 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;