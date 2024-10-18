SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=10648 AND 
mi_idx.info_type_id=101 AND 
mi.info_type_id=16 AND 
t.production_year=2008.0 AND 
t.phonetic_code='W6524' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;