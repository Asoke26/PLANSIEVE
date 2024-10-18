SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.kind_id=1 AND 
t.phonetic_code>='A5353' AND 
t.production_year=2013.0 AND 

t.id = ci.movie_id;