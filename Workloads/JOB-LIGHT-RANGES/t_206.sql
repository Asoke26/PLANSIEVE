SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=562 AND 
t.production_year<=1942.0 AND 
t.phonetic_code<='C2452' AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;