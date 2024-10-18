SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mk.keyword_id=12189 AND 
mi.info_type_id=17 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;