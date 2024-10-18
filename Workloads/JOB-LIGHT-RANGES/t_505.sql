SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=70 AND 
t.production_year>=1965.0 AND 
t.phonetic_code>='H3563' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;