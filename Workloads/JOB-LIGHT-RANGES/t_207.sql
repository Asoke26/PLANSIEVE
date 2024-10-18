SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year<=2009.0 AND 
t.phonetic_code<='M2' AND 
t.kind_id=3 AND 
mi_idx.info_type_id=101 AND 
mk.keyword_id=1 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;