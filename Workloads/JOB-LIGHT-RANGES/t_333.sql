SELECT COUNT(*)
FROM cast_info ci,title t
WHERE t.phonetic_code<='A5162' AND 
t.episode_nr<=5.0 AND 
t.production_year=1982.0 AND 

t.id = ci.movie_id;