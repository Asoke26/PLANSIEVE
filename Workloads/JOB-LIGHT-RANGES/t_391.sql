SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.phonetic_code='H4231' AND 
t.episode_nr<=13.0 AND 
ci.role_id=8 AND 
t.production_year<=2005.0 AND 
t.kind_id=7 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;