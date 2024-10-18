SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi_idx.info_type_id=99 AND 
t.phonetic_code='I5352' AND 
mi.info_type_id=13 AND 
mk.keyword_id=6291 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;