SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.phonetic_code='S56' AND 
t.production_year>=1965.0 AND 
mk.keyword_id=24686 AND 
ci.role_id=1 AND 
ci.nr_order=33.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;