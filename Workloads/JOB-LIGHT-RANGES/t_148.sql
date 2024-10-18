SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=110 AND 
t.production_year>=2005.0 AND 
mk.keyword_id=2560 AND 
t.kind_id=1 AND 
t.phonetic_code<='C2' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;