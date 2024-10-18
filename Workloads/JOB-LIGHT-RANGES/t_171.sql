SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code<='J525' AND 
t.series_years<='1995-????' AND 
t.kind_id=2 AND 
mi_idx.info_type_id=99 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;