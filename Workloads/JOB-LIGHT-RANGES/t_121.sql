SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=2241 AND 
mi.info_type_id=16 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;