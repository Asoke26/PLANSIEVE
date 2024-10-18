SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE ci.role_id=3 AND 
mc.company_type_id=1 AND 
t.season_nr<=2.0 AND 
t.production_year>=2012.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;