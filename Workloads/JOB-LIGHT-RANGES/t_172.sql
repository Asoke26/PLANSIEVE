SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi_idx.info_type_id=100 AND 
t.phonetic_code<='M2356' AND 
t.production_year=1995.0 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;