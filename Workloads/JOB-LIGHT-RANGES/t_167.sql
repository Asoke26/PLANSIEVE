SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi_idx.info_type_id=101 AND 
mk.keyword_id=992 AND 
t.kind_id=1 AND 
t.phonetic_code>='C1245' AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;