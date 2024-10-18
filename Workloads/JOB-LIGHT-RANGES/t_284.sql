SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.nr_order>=6.0 AND 
t.season_nr=1.0 AND 
t.phonetic_code>='P251' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;