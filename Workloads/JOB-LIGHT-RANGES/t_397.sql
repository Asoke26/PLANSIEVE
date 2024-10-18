SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.kind_id=7 AND 
t.phonetic_code<='E2426' AND 
t.season_nr<=3.0 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;