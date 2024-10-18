SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.production_year<=1937.0 AND 
t.phonetic_code<='M2362' AND 
mk.keyword_id=28440 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;