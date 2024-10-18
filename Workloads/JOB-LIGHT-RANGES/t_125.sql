SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=7 AND 
t.phonetic_code='D3641' AND 
mk.keyword_id=3534 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;