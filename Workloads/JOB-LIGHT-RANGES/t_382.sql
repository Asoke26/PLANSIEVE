SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.season_nr=1.0 AND 
ci.role_id=3 AND 
t.episode_nr<=912.0 AND 
t.phonetic_code='N2426' AND 
t.production_year>=2013.0 AND 

t.id = ci.movie_id;