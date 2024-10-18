SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.production_year<=2000.0 AND 
t.phonetic_code='F3142' AND 
mc.company_type_id=2 AND 
ci.role_id=10 AND 
t.season_nr<=1.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;