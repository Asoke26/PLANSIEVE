SELECT COUNT(*)
FROM cast_info ci,title t
WHERE ci.nr_order>=4.0 AND 
t.episode_nr=31.0 AND 
ci.role_id=1 AND 
t.kind_id=7 AND 
t.phonetic_code='F6353' AND 
t.season_nr<=4.0 AND 

t.id = ci.movie_id;