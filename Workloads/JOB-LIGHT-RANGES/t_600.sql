SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.production_year<=1998.0 AND 
mi.info_type_id=15 AND 
mk.keyword_id=2153 AND 
t.phonetic_code='S1521' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;