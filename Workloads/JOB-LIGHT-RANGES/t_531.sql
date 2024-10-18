SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year<=2003.0 AND 
t.phonetic_code<='U5363' AND 
mk.keyword_id=55 AND 
mi_idx.info_type_id=99 AND 
mi.info_type_id=15 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;