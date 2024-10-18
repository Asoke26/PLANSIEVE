SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.phonetic_code<='H451' AND 
mk.keyword_id=3919 AND 
t.kind_id=1 AND 
ci.role_id=1 AND 
ci.nr_order=3.0 AND 
t.production_year=2007.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;