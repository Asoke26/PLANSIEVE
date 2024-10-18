SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.season_nr<=7.0 AND 
t.phonetic_code>='L1524' AND 
t.episode_nr<=9.0 AND 
mc.company_type_id=2 AND 
mk.keyword_id=3575 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;