SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,title t
WHERE mi.info_type_id=5 AND 
t.kind_id=1 AND 
t.phonetic_code='J5324' AND 
t.production_year=2001.0 AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id;