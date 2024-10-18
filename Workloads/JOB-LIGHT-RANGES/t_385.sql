SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.production_year<=2002.0 AND 
t.phonetic_code<='H15' AND 
ci.nr_order=100.0 AND 
t.kind_id=1 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;