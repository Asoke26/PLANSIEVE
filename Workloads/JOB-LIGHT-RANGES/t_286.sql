SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE mk.keyword_id=98253 AND 
ci.role_id=2 AND 
t.phonetic_code<='L2353' AND 
t.production_year=2001.0 AND 
ci.nr_order<=4.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;