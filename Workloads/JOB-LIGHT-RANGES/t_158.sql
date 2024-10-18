SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=11 AND 
t.phonetic_code='H5146' AND 
t.kind_id=1 AND 
mk.keyword_id=27954 AND 
t.production_year=2007.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;