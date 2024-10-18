SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=1603 AND 
ci.role_id=10 AND 
mi_idx.info_type_id=101 AND 
t.phonetic_code<='M6162' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;