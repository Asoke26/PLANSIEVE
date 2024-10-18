SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.phonetic_code<='B6523' AND 
mk.keyword_id=72594 AND 
t.kind_id=4 AND 
mi.info_type_id=15 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;