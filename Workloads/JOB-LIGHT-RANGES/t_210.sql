SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.phonetic_code<='L2312' AND 
t.production_year>=1940.0 AND 
mk.keyword_id=1349 AND 
mi_idx.info_type_id=101 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;