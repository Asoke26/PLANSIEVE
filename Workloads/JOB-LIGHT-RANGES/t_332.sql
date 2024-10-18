SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.nr_order<=13.0 AND 
t.production_year=1971.0 AND 
ci.role_id=2 AND 
t.phonetic_code<='B5213' AND 

t.id = ci.movie_id;