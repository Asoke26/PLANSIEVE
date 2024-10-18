SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.production_year<=1996.0 AND 
t.season_nr<=1.0 AND 
t.episode_nr<=1.0 AND 
t.phonetic_code='W5632' AND 

t.id = ci.movie_id;