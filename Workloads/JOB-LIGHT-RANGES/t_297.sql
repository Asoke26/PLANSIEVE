SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.nr_order>=4.0 AND 
t.phonetic_code='A2165' AND 
mk.keyword_id=894 AND 
t.production_year>=2008.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;