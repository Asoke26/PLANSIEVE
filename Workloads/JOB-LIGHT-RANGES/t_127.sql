SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=13 AND 
t.production_year>=2009.0 AND 
t.kind_id=1 AND 
t.phonetic_code='N2352' AND 
mk.keyword_id=18209 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;