SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.phonetic_code<='L2352' AND 
mi_idx.info_type_id=101 AND 
mk.keyword_id=110376 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;