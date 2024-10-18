SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year>=2004.0 AND 
t.kind_id=1 AND 
mk.keyword_id=1215 AND 
mi_idx.info_type_id=100 AND 
t.phonetic_code>='S3623' AND 
mi.info_type_id=15 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;