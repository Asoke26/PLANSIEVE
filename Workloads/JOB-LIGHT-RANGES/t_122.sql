SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=93856 AND 
t.kind_id=1 AND 
t.phonetic_code>='D2353' AND 
t.production_year<=1943.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;