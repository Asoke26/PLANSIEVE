SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code='C4136' AND 
t.production_year>=1973.0 AND 
mk.keyword_id=3659 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;