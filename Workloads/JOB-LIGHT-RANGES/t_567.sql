SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.production_year=2008.0 AND 
mi.info_type_id=18 AND 
t.kind_id=1 AND 
t.phonetic_code<='D6252' AND 
mk.keyword_id=28622 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;