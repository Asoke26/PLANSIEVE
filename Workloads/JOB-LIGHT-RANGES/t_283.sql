SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.phonetic_code='G6323' AND 
ci.nr_order<=12.0 AND 
mk.keyword_id=18764 AND 
t.production_year<=1994.0 AND 
t.kind_id=3 AND 
ci.role_id=2 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;