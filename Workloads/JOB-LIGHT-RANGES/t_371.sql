SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.phonetic_code='N5142' AND 
t.production_year>=1992.0 AND 
ci.nr_order=4.0 AND 

t.id = ci.movie_id;