SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi.info_type_id=94 AND 
t.phonetic_code='B3243' AND 
mi_idx.info_type_id=101 AND 
mk.keyword_id=79384 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;