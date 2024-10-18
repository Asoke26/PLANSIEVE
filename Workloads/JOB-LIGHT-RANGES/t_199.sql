SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi_idx.info_type_id=99 AND 
t.production_year<=1989.0 AND 
mk.keyword_id=62 AND 
t.kind_id=1 AND 
t.phonetic_code>='F1362' AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;