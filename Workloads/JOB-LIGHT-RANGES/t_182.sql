SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=7080 AND 
t.production_year=1934.0 AND 
t.phonetic_code='I5235' AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;