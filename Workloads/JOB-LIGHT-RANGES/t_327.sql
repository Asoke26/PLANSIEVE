SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE mk.keyword_id=7965 AND 
ci.nr_order=10.0 AND 
t.production_year<=2011.0 AND 
t.phonetic_code<='D652' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;