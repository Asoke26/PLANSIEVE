SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.role_id=1 AND 
t.episode_nr=29.0 AND 
t.kind_id=7 AND 
t.season_nr<=1.0 AND 
t.phonetic_code<='P5263' AND 

t.id = ci.movie_id;