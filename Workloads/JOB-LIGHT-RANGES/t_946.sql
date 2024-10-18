SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code>='S125' AND 
t.production_year<=1996.0 AND 
mk.keyword_id=11490 AND 
t.kind_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;