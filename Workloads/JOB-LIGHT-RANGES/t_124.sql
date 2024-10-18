SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=3 AND 
mk.keyword_id=1091 AND 
t.kind_id=1 AND 
t.production_year>=2004.0 AND 
t.phonetic_code='L2532' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;