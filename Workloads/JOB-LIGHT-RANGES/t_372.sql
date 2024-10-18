SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.season_nr=1.0 AND 
t.production_year>=2005.0 AND 
ci.role_id=6 AND 
t.kind_id=7 AND 
t.episode_nr=50.0 AND 
t.phonetic_code>='J262' AND 

t.id = ci.movie_id;