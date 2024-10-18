SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE ci.role_id=1 AND 
mi_idx.info_type_id=100 AND 
mk.keyword_id=14168 AND 
mi.info_type_id=65 AND 
t.phonetic_code<='W6136' AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;