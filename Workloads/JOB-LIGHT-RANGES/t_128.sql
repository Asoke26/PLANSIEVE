SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=446 AND 
t.phonetic_code<='C6235' AND 
mi.info_type_id=17 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;