SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.phonetic_code>='B235' AND 
mk.keyword_id=30695 AND 
t.production_year=1964.0 AND 
ci.nr_order>=4.0 AND 
t.kind_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;