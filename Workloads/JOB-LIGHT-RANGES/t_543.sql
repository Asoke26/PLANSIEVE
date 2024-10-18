SELECT COUNT(*)
FROM movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=58098 AND 
mi.info_type_id=15 AND 
t.production_year=1984.0 AND 
t.phonetic_code='K6323' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mi_idx.movie_id;