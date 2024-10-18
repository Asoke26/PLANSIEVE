SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.phonetic_code>='P6526' AND 
mk.keyword_id=3644 AND 
ci.role_id=3 AND 
t.production_year=2001.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;