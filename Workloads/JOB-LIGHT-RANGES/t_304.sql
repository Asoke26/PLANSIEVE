SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.season_nr=4.0 AND 
ci.role_id=1 AND 
t.episode_nr>=4.0 AND 
t.production_year<=2002.0 AND 
t.phonetic_code<='L1536' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;