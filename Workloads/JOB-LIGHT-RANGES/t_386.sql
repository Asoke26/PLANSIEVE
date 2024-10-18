SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.kind_id=7 AND 
t.phonetic_code='C2162' AND 
t.episode_nr=22.0 AND 
ci.role_id=1 AND 
mc.company_type_id=2 AND 
t.production_year=2009.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;