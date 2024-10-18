SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.phonetic_code<='F5352' AND 
mi.info_type_id=107 AND 
t.kind_id=1 AND 
t.production_year<=2004.0 AND 
mk.keyword_id=56 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;