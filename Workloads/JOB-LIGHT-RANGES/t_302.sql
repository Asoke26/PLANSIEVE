SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.kind_id=7 AND 
mk.keyword_id=232 AND 
t.season_nr>=1.0 AND 
t.phonetic_code<='B6253' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;