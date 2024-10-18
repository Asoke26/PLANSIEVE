SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.season_nr>=13.0 AND 
t.phonetic_code<='P4521' AND 
t.episode_nr<=2.0 AND 

t.id = ci.movie_id;