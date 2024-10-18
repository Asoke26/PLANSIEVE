SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE mk.keyword_id=381 AND 
t.kind_id=7 AND 
t.season_nr<=4.0 AND 
t.phonetic_code<='E5353' AND 
t.production_year<=2009.0 AND 
t.episode_nr<=25.0 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;