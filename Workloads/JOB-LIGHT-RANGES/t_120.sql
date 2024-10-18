SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=3627 AND 
mi.info_type_id=4 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;