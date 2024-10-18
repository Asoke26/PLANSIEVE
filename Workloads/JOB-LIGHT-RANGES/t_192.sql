SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year<=2007.0 AND 
mi_idx.info_type_id=101 AND 
t.phonetic_code<='R2516' AND 
mk.keyword_id=347 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;