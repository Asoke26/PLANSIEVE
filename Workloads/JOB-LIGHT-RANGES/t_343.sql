SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.season_nr<=2.0 AND 
t.phonetic_code>='F6535' AND 
t.episode_nr>=18.0 AND 
ci.role_id=3 AND 
t.production_year>=2012.0 AND 

t.id = ci.movie_id;