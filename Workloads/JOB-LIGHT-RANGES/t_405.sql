SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.phonetic_code<='P43' AND 
t.production_year<=2009.0 AND 
mc.company_type_id=2 AND 
t.kind_id=7 AND 
t.season_nr<=1.0 AND 
ci.role_id=3 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;