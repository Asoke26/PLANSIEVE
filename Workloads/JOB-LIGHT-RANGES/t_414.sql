SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,title t
WHERE t.season_nr=1.0 AND 
t.phonetic_code>='A4523' AND 
t.kind_id=7 AND 

t.id = ci.movie_id AND 
t.id = mc.movie_id;