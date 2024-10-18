SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.nr_order>=13.0 AND 
t.phonetic_code='D2352' AND 
ci.role_id=1 AND 
t.kind_id=3 AND 
t.production_year>=2005.0 AND 

t.id = ci.movie_id;