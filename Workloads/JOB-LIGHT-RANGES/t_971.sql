SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=1657 AND 
ci.nr_order=11.0 AND 
t.kind_id=1 AND 
t.phonetic_code<='F4625' AND 
t.production_year<=1987.0 AND 
ci.role_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;