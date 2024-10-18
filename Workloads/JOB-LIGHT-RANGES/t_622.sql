SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_keyword mk,title t
WHERE t.production_year>=2001.0 AND 
mk.keyword_id=7087 AND 
t.phonetic_code<='V542' AND 
ci.nr_order<=53.0 AND 

t.id = ci.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;