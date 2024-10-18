SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mk.keyword_id=229 AND 
t.production_year>=2007.0 AND 
ci.role_id=2 AND 
ci.nr_order>=42.0 AND 
t.phonetic_code='G6264' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;