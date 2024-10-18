SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE mk.keyword_id=2853 AND 
t.phonetic_code='W26' AND 
ci.role_id=1 AND 
ci.nr_order<=6.0 AND 
t.production_year<=2012.0 AND 
t.kind_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;