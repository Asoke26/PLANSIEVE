SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.phonetic_code='W6412' AND 
t.kind_id=3 AND 
t.production_year=2009.0 AND 
ci.nr_order=6.0 AND 

t.id = ci.movie_id;