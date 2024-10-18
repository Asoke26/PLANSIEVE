SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code>='B2361' AND 
mi_idx.info_type_id=101 AND 
t.production_year>=1991.0 AND 
mk.keyword_id=870 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = mc.movie_id;