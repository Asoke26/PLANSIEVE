SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=17 AND 
t.phonetic_code='K5252' AND 
mk.keyword_id=2276 AND 
t.kind_id=1 AND 
t.production_year>=2005.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;