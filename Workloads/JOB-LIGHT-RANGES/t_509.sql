SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year>=1999.0 AND 
t.phonetic_code>='D6562' AND 
mk.keyword_id=1684 AND 
t.kind_id=3 AND 
mi.info_type_id=3 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;