SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=384 AND 
mi_idx.info_type_id=99 AND 
t.kind_id=1 AND 
t.phonetic_code='D5153' AND 
t.production_year>=1982.0 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;