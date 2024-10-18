SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code<='A6312' AND 
mk.keyword_id=14798 AND 
t.production_year<=2001.0 AND 
mi_idx.info_type_id=99 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;