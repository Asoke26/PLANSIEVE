SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=545 AND 
mi.info_type_id=18 AND 
t.phonetic_code<='N2356' AND 
t.production_year=1988.0 AND 
mi_idx.info_type_id=100 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;