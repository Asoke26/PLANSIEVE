SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code<='M3614' AND 
mk.keyword_id=303 AND 
t.kind_id=1 AND 
t.production_year>=1935.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;