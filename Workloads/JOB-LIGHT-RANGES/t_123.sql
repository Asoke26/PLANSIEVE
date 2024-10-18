SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.production_year>=2012.0 AND 
t.phonetic_code>='T25' AND 
mk.keyword_id=7633 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;