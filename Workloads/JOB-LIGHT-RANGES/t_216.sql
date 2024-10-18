SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code<='A4236' AND 
mk.keyword_id=34370 AND 
mi_idx.info_type_id=101 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;