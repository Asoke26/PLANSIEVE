SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE t.series_years<='1966-1971' AND 
t.phonetic_code<='F5416' AND 
t.kind_id=2 AND 
mc.company_type_id=1 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;