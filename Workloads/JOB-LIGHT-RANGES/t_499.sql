SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year=1996.0 AND 
mi_idx.info_type_id=101 AND 
mk.keyword_id=5408 AND 
mi.info_type_id=16 AND 
t.phonetic_code<='S1316' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;