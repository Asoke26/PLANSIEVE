SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.production_year<=1993.0 AND 
t.phonetic_code>='B1525' AND 
mk.keyword_id=11839 AND 
ci.nr_order>=23.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;