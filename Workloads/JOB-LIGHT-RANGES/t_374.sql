SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.production_year>=1988.0 AND 
t.phonetic_code>='C6312' AND 
ci.nr_order=17.0 AND 
ci.role_id=1 AND 

t.id = ci.movie_id;