SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=5 AND 
t.production_year=2000.0 AND 
t.phonetic_code='N1652' AND 
mk.keyword_id=545 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;