SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE ci.role_id=9 AND 
t.production_year=1958.0 AND 
t.season_nr=2.0 AND 
t.kind_id=7 AND 
mc.company_type_id=2 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;