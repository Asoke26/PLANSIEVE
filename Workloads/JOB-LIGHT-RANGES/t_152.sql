SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=7 AND 
t.production_year<=1955.0 AND 
t.kind_id=1 AND 
t.phonetic_code='V4535' AND 
mk.keyword_id=3154 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;