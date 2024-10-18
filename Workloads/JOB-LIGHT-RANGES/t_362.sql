SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.episode_nr=6.0 AND 
t.production_year=1996.0 AND 
t.phonetic_code='U5162' AND 
ci.role_id=1 AND 
t.season_nr<=3.0 AND 

t.id = ci.movie_id;