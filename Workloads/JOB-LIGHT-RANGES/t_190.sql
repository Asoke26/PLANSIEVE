SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=4 AND 
t.production_year=2006.0 AND 
t.phonetic_code>='D2323' AND 
mk.keyword_id=2469 AND 
mi_idx.info_type_id=100 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;