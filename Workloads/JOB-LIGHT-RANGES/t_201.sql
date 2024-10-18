SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.season_nr=1.0 AND 
mk.keyword_id=9287 AND 
t.phonetic_code='C2132' AND 
t.production_year<=1954.0 AND 
t.kind_id=7 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;