SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year<=2011.0 AND 
t.phonetic_code<='R3263' AND 
mk.keyword_id=5663 AND 
t.kind_id=1 AND 
ci.role_id=3 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;