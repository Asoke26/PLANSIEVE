SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.episode_nr>=12.0 AND 
t.kind_id=7 AND 
t.phonetic_code='F3653' AND 
t.season_nr=5.0 AND 

t.id = ci.movie_id;