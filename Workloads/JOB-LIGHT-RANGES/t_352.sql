SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.role_id=3 AND 
t.episode_nr>=5.0 AND 
t.season_nr=7.0 AND 
t.phonetic_code='N52' AND 
t.production_year<=2011.0 AND 

t.id = ci.movie_id;