SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mk.keyword_id=495 AND 
mi.info_type_id=8 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;