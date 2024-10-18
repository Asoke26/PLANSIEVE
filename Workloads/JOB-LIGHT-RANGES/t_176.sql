SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code<='T2365' AND 
t.production_year<=2002.0 AND 
t.series_years<='2002-????' AND 
mi_idx.info_type_id=101 AND 
t.kind_id=2 AND 
mk.keyword_id=2123 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;