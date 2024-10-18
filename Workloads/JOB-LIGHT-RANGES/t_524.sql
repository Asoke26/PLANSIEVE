SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year<=1940.0 AND 
mk.keyword_id=2849 AND 
t.phonetic_code<='A4325' AND 
mi.info_type_id=15 AND 
mi_idx.info_type_id=99 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;