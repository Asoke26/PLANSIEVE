SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.episode_nr<=9.0 AND 
t.production_year>=1999.0 AND 
t.phonetic_code<='R32' AND 
t.kind_id=7 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;